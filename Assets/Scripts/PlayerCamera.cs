using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCamera : MonoBehaviour
{
    public Vector3 offset = new Vector3(0, 3, -4);
    public float rotX = 15;
    public  float rotSpeedX = 10f;
    public  float rotSpeedY = 30f;

    GameObject player;
    float rotY;


    void Awake()
    {
        Cursor.lockState = CursorLockMode.Locked;
        player = GameObject.FindGameObjectWithTag("Player");
    }

    void Update()
    {
        transform.eulerAngles = new Vector3(rotX, rotY, 0);
        transform.position = player.transform.position + Quaternion.Euler(0, rotY, 0) * offset;

        rotX += -Input.GetAxis("Mouse Y") * rotSpeedX * Time.deltaTime;
        rotY += Input.GetAxis("Mouse X") * rotSpeedX * Time.deltaTime;
    }
}
