﻿using UnityEngine;
using UnityEngine.SceneManagement;

public class HitInfo
{
    public int damage;
    public Vector3 force;

    public HitInfo (int damage, Vector3 normal)
    {
        this.damage = damage;
        this.force = normal;
    }
}

public class PlayerController : MonoBehaviour
{
    public float meshLerpSpeed = 0.333f;
    public float groundDistance = 0.1f;
    public float extraGravity = 100;
    public float moveForce = 3;
    public float faintForce = 50;
    public float grabbableRange = 2;
    public float throwForce = 10;
    public float timeUntilLevelEnd = 3;
    public float injuryTimeReset = 1;
    public float throwExtraHeight = 0.2f;

    public GameObject mesh;
    public GameObject grabbableMarkerPrefab;
    public GameObject helm;
    public Transform grabHoldPoint;
    public Transform centerPoint;
    public Animator animator;

    public AudioSource boneBreaking;

    public delegate void InjuryHandler(int injuryLevel);
    public event InjuryHandler OnInjuryUpdate = delegate { };

    public delegate void SimpleHandler();
    public event SimpleHandler OnLevelEnd = delegate { };
    public event SimpleHandler OnLevelTransitionRequest = delegate { };

    public bool IsWearingHelm { get; private set; }
    public bool IsFainted { get; private set; }
    GrabbableObject currentGrabbable;
    GameObject grabbableMarker;
    new Rigidbody rigidbody;
    bool isGrabbing;
    public int InjuryLevel { get; private set; }
    bool isLevelEnded;
    float injuryTimer;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        grabbableMarker = Instantiate(grabbableMarkerPrefab, transform.position, Quaternion.identity);
        grabbableMarker.SetActive(false);
    }

    void Start()
    {
        if (GameDirector.CurrentLevel == Level.Final)
        {
            WearHelm();
        }
    }

    void FixedUpdate()
    {
        if (!IsFainted)
        {
            ApplyMovementInput();
        }
        ApplyFakeGravity();
    }

    void Update()
    {
        if (!IsFainted)
        {
            if (!isGrabbing)
            {
                FindGrabbable();
                GrabInput();
            }
            else
            {
                ThrowInput();
            }
            if (injuryTimer > 0)
            {
                injuryTimer -= Time.deltaTime;
                if (injuryTimer <= 0)
                {
                    ResetInjuryLevel();
                }
            }
        }
        else
        {
            timeUntilLevelEnd -= Time.deltaTime;
            timeUntilLevelEnd = Mathf.Max(timeUntilLevelEnd, 0);
            if (timeUntilLevelEnd <= 0 && !isLevelEnded)
            {
                isLevelEnded = true;
                OnLevelEnd();
            }
        }

        if (isLevelEnded && Input.GetMouseButtonDown(0))
        {
            OnLevelTransitionRequest();
        }
    }

    public void WearHelm()
    {
        IsWearingHelm = true;
        helm.SetActive(true);
    }

    void ResetInjuryLevel()
    {
        InjuryLevel = 0;
        OnInjuryUpdate(0);
    }

    void ApplyMovementInput()
    {
        Vector3 cameraRight = Camera.main.transform.right;
        cameraRight.y = 0;
        Vector3 cameraForward = Camera.main.transform.forward;
        cameraForward.y = 0;

        Vector3 move = cameraRight.normalized * Input.GetAxis("Horizontal") + cameraForward.normalized * Input.GetAxis("Vertical");
        if (move.magnitude > 1)
        {
            move.Normalize();
        }
        rigidbody.AddForce(move * moveForce, ForceMode.VelocityChange);

        bool isMoving = move.magnitude > 0.01;
        animator.SetBool("isMoving", isMoving);
        if (isMoving)
        {
            mesh.transform.forward = Vector3.Lerp(mesh.transform.forward, move.normalized, meshLerpSpeed);
        }
    }

    void ApplyFakeGravity()
    {
        if (!IsGrounded() || IsFainted)
        {
            rigidbody.AddForce(Vector3.down * extraGravity, ForceMode.Acceleration);
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
            if (hit.collider.tag == "Player")
            {
                continue;
            }
            return true;
        }
        return false;
    }

    void Faint()
    {
        boneBreaking.Play();
        animator.ResetTrigger("throw");
        animator.SetTrigger("faint");
        rigidbody.constraints = RigidbodyConstraints.FreezePositionX | RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezeRotation;
        IsFainted = true;
        Vector3 randomDirection = Random.insideUnitSphere;
        rigidbody.AddForce(randomDirection * faintForce, ForceMode.VelocityChange);
    }

    public void OnHit(HitInfo hitInfo)
    {
        if (!IsFainted)
        {
            AddInjuryLevel(hitInfo.damage);
            rigidbody.AddForce(hitInfo.force, ForceMode.VelocityChange);
            if (InjuryLevel == 100)
            {
                Faint();
            }
            else
            {
                injuryTimer = injuryTimeReset;
            }
        }
    }

    void AddInjuryLevel(int value)
    {
        InjuryLevel += value;
        InjuryLevel = Mathf.Min(InjuryLevel, 100);
        OnInjuryUpdate(InjuryLevel);
    }

    void FindGrabbable()
    {
        var hits = Physics.SphereCastAll(transform.position, grabbableRange, Vector3.down, 0);

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
            grabbableMarker.transform.position = currentGrabbable.transform.position;
            grabbableMarker.SetActive(true);
        }
        else
        {
            grabbableMarker.SetActive(false);
        }
    }

    void GrabInput()
    {
        if (Input.GetMouseButtonDown(0) && currentGrabbable)
        {
            isGrabbing = true;
            currentGrabbable.transform.parent = grabHoldPoint;
            currentGrabbable.Grab();
            grabbableMarker.SetActive(false);
        }
    }

    void ThrowInput()
    {
        if (Input.GetMouseButtonDown(0))
        {
            isGrabbing = false;
            currentGrabbable.transform.parent = null;
            var grabbable = currentGrabbable.GetComponent<GrabbableObject>();

            Vector3 cameraForward = Camera.main.transform.forward;
            Vector3 cameraProjectedForward = cameraForward;
            cameraProjectedForward.y = 0;
            Vector3 cameraForwardCorrectedUp = cameraForward + Vector3.up * throwExtraHeight;

            mesh.transform.forward = cameraProjectedForward.normalized;
            grabbable.Throw(cameraForwardCorrectedUp * throwForce);
            animator.SetTrigger("throw");
        }
    }
}
