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

    void Update()
    {
        transform.forward = mainCam.transform.forward;
    }
}
