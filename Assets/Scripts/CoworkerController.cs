using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public enum CoworkerState { Idle, Chase, Attack };

public class CoworkerController : MonoBehaviour
{
    public float attackRange = 1;
    public float minSpeedForRun = 1;
    public float attackLungeForce = 100;
    public float punchBreakDistance = 3;
    public float groundDistance = 0.1f;
    public float extraGravity = 100;

    public Animator animator;

    PlayerController playerController;
    NavMeshAgent agent;
    CoworkerState state = CoworkerState.Idle;
    new Rigidbody rigidbody;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
    }

    void Start()
    {
        playerController = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>();
        agent = GetComponent<NavMeshAgent>();
    }

    void Update()
    {
        if (state == CoworkerState.Chase)
        {
            Vector3 chaseDir = playerController.transform.position - transform.position;
            if (chaseDir.magnitude <= attackRange)
            {
                Vector3 attackNormal = chaseDir;
                attackNormal.y = 0;
                transform.forward = attackNormal.normalized;
                agent.enabled = false;
                state = CoworkerState.Attack;
                animator.SetTrigger("attack");
                rigidbody.AddForce(chaseDir.normalized * attackLungeForce, ForceMode.VelocityChange);
            }
            else
            {
                agent.destination = playerController.transform.position;
            }
        }
        animator.SetBool("isRunning", agent.velocity.magnitude > minSpeedForRun);
        ApplyFakeGravity();
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {
            var hits = Physics.RaycastAll(transform.position, transform.forward, punchBreakDistance);
            foreach (var hit in hits)
            {
                if (hit.collider.tag == "Breakable")
                {
                    hit.collider.GetComponent<BreakableObject>().Break(transform.forward);
                }
            }
            collision.collider.GetComponent<PlayerController>().OnHit(new HitInfo(50, transform.forward * attackLungeForce));
        }
    }

    bool IsGrounded()
    {
        Vector3 groundOrigin = transform.position + Vector3.up * groundDistance;
        Vector3 ray = Vector3.down * groundDistance * 2;
        var hits = Physics.RaycastAll(groundOrigin, Vector3.down, groundDistance * 2);
        Debug.DrawRay(groundOrigin, ray, Color.red);
        foreach (var hit in hits)
        {
            if (hit.collider.gameObject == gameObject)
            {
                continue;
            }
            return true;
        }
        return false;
    }

    void ApplyFakeGravity()
    {
        if (!IsGrounded())
        {
            rigidbody.AddForce(Vector3.down * extraGravity, ForceMode.Acceleration);
        }
    }

    public void OnHit()
    {
        state = CoworkerState.Chase;
    }
}
