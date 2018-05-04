﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitInfo
{
    public int damage;
    public Vector3 normal;

    public HitInfo (int damage, Vector3 normal)
    {
        this.damage = damage;
        this.normal = normal;
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

    public GameObject mesh;
    public GameObject grabbableMarkerPrefab;

    GameObject grabbableMarker;
    new Rigidbody rigidbody;
    bool isFainted;

    void Awake()
    {
        rigidbody = GetComponent<Rigidbody>();
        grabbableMarker = Instantiate(grabbableMarkerPrefab, transform.position, Quaternion.identity);
        grabbableMarker.SetActive(false);
    }

    void FixedUpdate()
    {
        if (!isFainted)
        {
            ApplyMovementInput();
        }
        ApplyFakeGravity();
    }

    void Update()
    {
        FindGrabbable();
    }

    void ApplyMovementInput()
    {
        Vector3 cameraRight = Camera.main.transform.right;
        cameraRight.y = 0;
        Vector3 cameraForward = Camera.main.transform.forward;
        cameraForward.y = 0;

        Vector3 move = cameraRight.normalized * Input.GetAxis("Horizontal") + cameraForward.normalized * Input.GetAxis("Vertical");
        rigidbody.AddForce(move * moveForce, ForceMode.VelocityChange);
    }

    void ApplyFakeGravity()
    {
        if (!IsGrounded() || isFainted)
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
        rigidbody.constraints = RigidbodyConstraints.None;
        rigidbody.drag = 1;
        isFainted = true;
        Vector3 randomDirection = Random.insideUnitSphere;
        rigidbody.AddForce(randomDirection * faintForce, ForceMode.VelocityChange);
    }

    public void OnHit(HitInfo hitInfo)
    {
        Faint();
    }

    void FindGrabbable()
    {
        var hits = Physics.SphereCastAll(transform.position, grabbableRange, Vector3.down, 0);

        GameObject closestObject = null;
        float closestDistance = float.MaxValue;
        
        foreach (var hit in hits)
        {
            if (hit.collider.tag == "Grabbable")
            {
                float distance = Vector3.Distance(hit.collider.transform.position, transform.position);
                if (distance < closestDistance)
                {
                    closestObject = hit.collider.gameObject;
                    closestDistance = distance;
                }
            }
        }

        if (closestObject)
        {
            grabbableMarker.transform.position = closestObject.transform.position;
            grabbableMarker.SetActive(true);
        }
        else
        {
            grabbableMarker.SetActive(false);
        }
    }
}
