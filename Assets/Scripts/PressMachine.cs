using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressMachine : MonoBehaviour, ITriggerable
{
    public float pressForce = 20;
    public float timeToReset = 5;
    public float resetSpeed = 10;

    float timeSincePress;
    new Rigidbody rigidbody;
    Vector3 initialPos;



    void Awake()
    {
        timeSincePress = timeToReset;
        initialPos = transform.position;
        rigidbody = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (timeSincePress < timeToReset)
        {
            timeSincePress = Mathf.Min(timeSincePress + Time.deltaTime, timeToReset);
        }
        else
        {
            rigidbody.isKinematic = true;
            rigidbody.velocity = Vector3.zero;
            transform.position = Vector3.Lerp(transform.position, initialPos, resetSpeed * Time.deltaTime);
        }
    }

    void Press()
    {
        rigidbody.isKinematic = false;
        timeSincePress = 0;
        rigidbody.AddForce(-transform.up * pressForce, ForceMode.VelocityChange);
    }

    public void Trigger()
    {
        Press();
    }
}
