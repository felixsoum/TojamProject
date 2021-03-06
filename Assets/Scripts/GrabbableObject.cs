﻿using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class GrabbableObject : MonoBehaviour
{
    public bool canBreakObjects = false;
    public bool canMurder = false;
    Collider thrownCollider;
    new Rigidbody rigidbody;
    public bool IsGrabbable { get; private set; }
    const float GrabbableResetTime = 1;
    const float RespawnTime = 5;
    float currentRespawnTime;
    bool hasBeenGrabbed;
    bool isHarmful;
    Vector3 initialPos;
    Quaternion initialRot;

    public Vector3 posOffset;
    public Vector3 rotOffset;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        thrownCollider = GetComponent<Collider>();
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
            transform.localPosition = posOffset;
            transform.localEulerAngles = rotOffset;
            IsGrabbable = false;
            rigidbody.velocity = Vector3.zero;
            rigidbody.rotation = Quaternion.identity;
            rigidbody.isKinematic = true;
            thrownCollider.enabled = false;
            hasBeenGrabbed = true;
            currentRespawnTime = RespawnTime;
        }
    }

    public void Throw(Vector3 force, bool isHarmful = true)
    {
        this.isHarmful = isHarmful;
        transform.position += force.normalized * 0.25f;
        thrownCollider.enabled = true;
        rigidbody.isKinematic = false;
        rigidbody.constraints = RigidbodyConstraints.None;
        rigidbody.AddForce(force, ForceMode.Impulse);
        Invoke("ResetGrabbable", GrabbableResetTime);
    }

    public bool IsMoving()
    {
        return rigidbody.velocity.magnitude > 0.1;
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
        thrownCollider.enabled = true;
        isHarmful = false;
    }

    void OnCollisionEnter(Collision collision)
    {
        if (canBreakObjects && collision.collider.tag == "Breakable")
        {
            var breakable = collision.collider.GetComponent<BreakableObject>();
            breakable.Break(-collision.contacts[0].normal);
        }
        else if (collision.collider.tag == "Coworker" && isHarmful)
        {
            if (IsMoving())
            {
                collision.collider.GetComponent<CoworkerController>().OnHit();
            }
        }
    }
}
