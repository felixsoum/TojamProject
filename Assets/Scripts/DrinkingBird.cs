using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrinkingBird : MonoBehaviour
{
    public GameObject rotatingMesh;
    public float rotSpeed = 10;

    float rotX;
    float initialRotX;
    bool isGoingForward = true;

    void Awake()
    {
        initialRotX = transform.eulerAngles.x;
    }

    void Update()
    {
        if (isGoingForward)
        {
            rotX += rotSpeed * Time.deltaTime;
            if (rotX >= 90)
            {
                rotX = 90;
                isGoingForward = false;
            }
        }
        else
        {
            rotX -= rotSpeed * Time.deltaTime;
            if (rotX <= initialRotX)
            {
                rotX = initialRotX;
                isGoingForward = true;
            }
        }

        rotatingMesh.transform.eulerAngles = new Vector3(rotX, 0, 0);
    }
}
