﻿using UnityEngine;

public class PressMachine : MonoBehaviour, ITriggerable
{
    public float pressForce = 20;
    public float timeToReset = 5;
    public float resetSpeed = 10;
    public float velocityHitMinimum = 5;

    public Solution solution;
    public AudioSource pressSound;
    public AudioSource hitSound;

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
        pressSound.Play();
    }

    public void Trigger()
    {
        Press();
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player" && rigidbody.velocity.magnitude >= velocityHitMinimum)
        {
            var player = collision.gameObject.GetComponent<PlayerController>();
            if (!player.IsWearingHelm)
            {
                GameDirector.Solve(solution);
                player.OnHit(new HitInfo(100, Vector3.zero));
            }
        }

        if (collision.gameObject.tag == "Coworker")
        {
            hitSound.Play();
            collision.gameObject.GetComponent<CoworkerController>().Kill();
        }
    }
}
