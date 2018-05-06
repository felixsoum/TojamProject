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
    public bool isPeaceful;

    public Transform grabTransform;
    public Animator animator;
    public GrabbableObject cake;
    public GameObject loot;

    public AudioSource punchSound;
    public AudioSource stabSound;

    public AudioSource[] voices;

    PlayerController playerController;
    NavMeshAgent agent;
    CoworkerState state = CoworkerState.Idle;
    new Rigidbody rigidbody;
    float currentReactionCooldown;
    const float CakeDetectRange = 5;
    const float CakeDetectAngle = 90;
    const float PickItemRange = 2;
    const float TimeToReleaseItem = 1;
    GrabbableObject currentGrabbable;

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
                currentReactionCooldown = reactionCooldownDuration;
                Attack();
            }
            else
            {
                agent.destination = playerController.transform.position;
            }
        }
        animator.SetBool("isRunning", agent.velocity.magnitude > minSpeedForRun);
        ApplyFakeGravity();
    }

    void PickupItem()
    {
        var hits = Physics.SphereCastAll(grabTransform.position, PickItemRange, Vector3.down, 0);


        currentGrabbable = null;
        float closestDistance = float.MaxValue;

        foreach (var hit in hits)
        {
            if (hit.collider.tag == "Grabbable")
            {
                float distance = Vector3.Distance(hit.collider.transform.position, transform.position);
                if (distance < closestDistance)
                {
                    var grabbable = hit.collider.GetComponent<GrabbableObject>();
                    if (grabbable && grabbable.IsGrabbable)
                    {
                        currentGrabbable = grabbable;
                        closestDistance = distance;
                    }
                }
            }
        }

        if (currentGrabbable)
        {
            var grabbable = currentGrabbable.GetComponent<GrabbableObject>();
            currentGrabbable.transform.parent = grabTransform;
            currentGrabbable.transform.localPosition = Vector3.zero;
            grabbable.Grab();
        }
    }

    void DropItem()
    {
        if (currentGrabbable)
        {
            currentGrabbable.Throw(transform.forward, false);
            currentGrabbable.transform.parent = null;
            currentGrabbable = null;
        }
    }

    void Attack()
    {
        var hits = Physics.RaycastAll(transform.position, transform.forward, punchBreakDistance);
        foreach (var hit in hits)
        {
            if (hit.collider.tag == "Breakable")
            {
                hit.collider.GetComponent<BreakableObject>().Break(transform.forward);
            }
        }
        if (currentGrabbable && currentGrabbable.canMurder)
        {
            GameDirector.Solve(Solution.KnifeKill);
            playerController.OnHit(new HitInfo(100, transform.forward * attackLungeForce));
            stabSound.Play();
        }
        else if (playerController.InjuryLevel >= 50)
        {
            punchSound.Play();
            GameDirector.Solve(Solution.DoublePunched);
            playerController.OnHit(new HitInfo(50, transform.forward * attackLungeForce));
        }
        else
        {
            punchSound.Play();
            playerController.OnHit(new HitInfo(50, transform.forward * attackLungeForce));
        }

        if (currentGrabbable)
        {
            Invoke("DropItem", TimeToReleaseItem);
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
        if (currentReactionCooldown == 0)
        {
            if (voices.Length > 0)
            {
                int randomVoiceIndex = Random.Range(0, voices.Length);
                voices[randomVoiceIndex].Play();
            }
            if (!isPeaceful && state != CoworkerState.Chase)
            {
                state = CoworkerState.Chase;
                PickupItem();
                agent.enabled = true;
            }
        }
    }

    public void Kill()
    {
        if (loot)
        {
            loot.SetActive(true);
        }
        DropItem();
        gameObject.SetActive(false);
    }
}
