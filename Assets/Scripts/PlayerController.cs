using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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

    public GameObject mesh;
    public GameObject grabbableMarkerPrefab;
    public Transform grabHoldPoint;
    public Transform centerPoint;
    public Animator animator;

    public delegate void InjuryHandler(int injuryLevel);
    public event InjuryHandler OnInjuryUpdate;

    public delegate void SimpleHandler();
    public event SimpleHandler OnLevelEnd;

    public bool IsFainted { get; private set; }
    GrabbableObject currentGrabbable;
    GameObject grabbableMarker;
    new Rigidbody rigidbody;
    bool isGrabbing;
    int injuryLevel;
    bool isLevelEnded;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        grabbableMarker = Instantiate(grabbableMarkerPrefab, transform.position, Quaternion.identity);
        grabbableMarker.SetActive(false);
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
            Cursor.lockState = CursorLockMode.None;
            SceneManager.LoadScene("Main");
        }
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
        animator.SetTrigger("faint");
        rigidbody.constraints = RigidbodyConstraints.FreezePositionX & RigidbodyConstraints.FreezePositionZ & RigidbodyConstraints.FreezeRotation;
        IsFainted = true;
        Vector3 randomDirection = Random.insideUnitSphere;
        rigidbody.AddForce(randomDirection * faintForce, ForceMode.VelocityChange);
    }

    public void OnHit(HitInfo hitInfo)
    {
        if (!IsFainted)
        {
            injuryLevel += hitInfo.damage;
            injuryLevel = Mathf.Min(injuryLevel, 100);
            OnInjuryUpdate(injuryLevel);
            rigidbody.AddForce(hitInfo.force, ForceMode.VelocityChange);
            if (injuryLevel == 100)
            {
                Faint();
            }
        }
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
            var grabbable = currentGrabbable.GetComponent<GrabbableObject>();
            grabbable.Grab();
            currentGrabbable.transform.parent = grabHoldPoint;
            currentGrabbable.transform.localPosition = Vector3.zero;
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
            grabbable.Throw(mesh.transform.forward * throwForce);
            animator.SetTrigger("throw");
        }
    }
}
