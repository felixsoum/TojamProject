using UnityEngine;

public class BreakableObject : MonoBehaviour
{
    public AudioSource breakSound;

    new Rigidbody rigidbody;
    new Collider collider;
    bool isBroken;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        collider = GetComponent<Collider>();
    }

    public void Break(Vector3 breakNormal)
    {
        if (!isBroken)
        {
            isBroken = true;
            breakSound.Play();
            collider.enabled = false;
            rigidbody.isKinematic = false;
            rigidbody.AddForce(breakNormal * 10, ForceMode.VelocityChange);
        }
    }
}
