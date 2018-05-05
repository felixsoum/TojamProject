using UnityEngine;

public class GrabbableObject : MonoBehaviour
{
    public bool canBreakObjects = false;
    public Collider restingCollider;
    public Collider thrownCollider;
    new Rigidbody rigidbody;
    public bool IsGrabbable { get; private set; }
    const float GrabbableResetTime = 1;
    const float RespawnTime = 5;
    float currentRespawnTime;
    bool hasBeenGrabbed;

    Vector3 initialPos;
    Quaternion initialRot;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        IsGrabbable = true;
        initialPos = transform.position;
        initialRot = transform.rotation;
    }

    void Update()
    {
        if (hasBeenGrabbed && IsGrabbable)
        {
            currentRespawnTime -= Time.deltaTime;
            if (currentRespawnTime <= 0)
            {
                Respawn();
            }
        }
    }

    public void Grab()
    {
        if (IsGrabbable)
        {
            IsGrabbable = false;
            rigidbody.velocity = Vector3.zero;
            rigidbody.rotation = Quaternion.identity;
            rigidbody.isKinematic = true;
            restingCollider.enabled = false;
            thrownCollider.enabled = false;
            hasBeenGrabbed = true;
            currentRespawnTime = RespawnTime;
        }
    }

    public void Throw(Vector3 force)
    {
        transform.position += force.normalized * 0.25f;
        thrownCollider.enabled = true;
        rigidbody.isKinematic = false;
        rigidbody.constraints = RigidbodyConstraints.None;
        rigidbody.AddForce(force, ForceMode.Impulse);
        Invoke("ResetGrabbable", GrabbableResetTime);
    }

    void ResetGrabbable()
    {
        IsGrabbable = true;
    }

    void Respawn()
    {
        hasBeenGrabbed = false;
        transform.position = initialPos;
        transform.rotation = initialRot;
        rigidbody.velocity = Vector3.zero;
        rigidbody.rotation = Quaternion.identity;
        restingCollider.enabled = true;
        thrownCollider.enabled = false;
    }

    void OnCollisionEnter(Collision collision)
    {
        if (canBreakObjects && collision.collider.tag == "Breakable")
        {
            var breakable = collision.collider.GetComponent<BreakableObject>();
            breakable.Break(-collision.contacts[0].normal);
        }
        else if (collision.collider.tag == "Coworker")
        {
            collision.collider.GetComponent<CoworkerController>().OnHit();
        }
    }
}
