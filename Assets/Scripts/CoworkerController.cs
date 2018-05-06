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
    public float reactionCooldownDuration = 2;

    public Transform grabTransform;
    public Animator animator;
    public GrabbableObject cake;

    PlayerController playerController;
    NavMeshAgent agent;
    CoworkerState state = CoworkerState.Idle;
    new Rigidbody rigidbody;
    bool isHarmful;
    float currentReactionCooldown;
    const float CakeDetectRange = 5;
    const float CakeDetectAngle = 90;

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
        if (currentReactionCooldown > 0)
        {
            currentReactionCooldown = Mathf.Max(currentReactionCooldown - Time.deltaTime, 0);
            if (currentReactionCooldown <= 0)
            {
                state = CoworkerState.Idle;
                agent.enabled = true;
            }
        }

        if (state == CoworkerState.Idle)
        {
            if (cake)
            {
                float cakeDistance = Vector3.Distance(transform.position, cake.transform.position);
                float cakeAngle = Vector3.Angle(transform.forward, cake.transform.position - transform.position);
                if (cakeDistance <= CakeDetectRange && cakeAngle <= CakeDetectAngle && !cake.IsMoving())
                {
                    agent.destination = cake.transform.position;
                }
            }
        }
        else if (state == CoworkerState.Chase)
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
                isHarmful = true;
                currentReactionCooldown = reactionCooldownDuration;
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
        if (isHarmful && collision.collider.tag == "Player")
        {
            isHarmful = false;
            var hits = Physics.RaycastAll(transform.position, transform.forward, punchBreakDistance);
            foreach (var hit in hits)
            {
                if (hit.collider.tag == "Breakable")
                {
                    hit.collider.GetComponent<BreakableObject>().Break(transform.forward);
                }
            }
            var player = collision.collider.GetComponent<PlayerController>();
            if (player.InjuryLevel >= 50)
            {
                GameDirector.Solve(Solution.DoublePunched);
            }
            player.OnHit(new HitInfo(50, transform.forward * attackLungeForce));
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
        if (state != CoworkerState.Chase && currentReactionCooldown == 0)
        {
            state = CoworkerState.Chase;
            agent.enabled = true;
        }
    }
}
