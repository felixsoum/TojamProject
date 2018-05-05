using UnityEngine;

public class BreakableObject : MonoBehaviour
{
    new Rigidbody rigidbody;
    new Collider collider;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        collider = GetComponent<Collider>();
    }

    public void Break(Vector3 breakNormal)
    {
        collider.enabled = false;
        rigidbody.isKinematic = false;
        rigidbody.AddForce(breakNormal * 10, ForceMode.VelocityChange);
    }
}
