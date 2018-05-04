using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabbableObject : MonoBehaviour
{
    new Rigidbody rigidbody;
    public bool IsGrabbable { get; private set; }
    const float GrabbableResetTime = 1;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        IsGrabbable = true;
    }

    public void Grab()
    {
        if (IsGrabbable)
        {
            IsGrabbable = false;
            rigidbody.velocity = Vector3.zero;
            rigidbody.rotation = Quaternion.identity;
            rigidbody.isKinematic = true;
        }
    }

    public void Throw(Vector3 force)
    {
        rigidbody.isKinematic = false;
        rigidbody.constraints = RigidbodyConstraints.None;
        rigidbody.AddForce(force, ForceMode.VelocityChange);
        Invoke("ResetGrabbable", GrabbableResetTime);
    }

    void ResetGrabbable()
    {
        IsGrabbable = true;
    }
}
