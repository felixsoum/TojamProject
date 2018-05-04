using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuadFaceCamera : MonoBehaviour
{
    Camera mainCam;

    void Awake()
    {
        mainCam = Camera.main;
    }

    void OnEnable()
    {
        Face();
    }

    void Update()
    {
        Face();
    }

    void Face()
    {
        if (mainCam)
        {
            transform.forward = mainCam.transform.forward;
        }
    }
}
