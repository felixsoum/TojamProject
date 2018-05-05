using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCamera : MonoBehaviour
{
    public Vector3 offset = new Vector3(0, 3, -4);
    public float rotX = 15;
    public float maxRotX = 60;
    public  float rotSpeedX = 10f;
    public  float rotSpeedY = 30f;
    public float faintLerpSpeed = 1;

    GameObject player;
    PlayerController playerController;
    float rotY;

    void Awake()
    {
        Cursor.lockState = CursorLockMode.Locked;
        player = GameObject.FindGameObjectWithTag("Player");
        playerController = player.GetComponent<PlayerController>();
    }

    private void OnInjuryUpdate(int injuryLevel)
    {
        throw new System.NotImplementedException();
    }

    void Update()
    {

        transform.eulerAngles = new Vector3(rotX, rotY, 0);
        if (!playerController.IsFainted)
        {
            transform.position = player.transform.position + Quaternion.Euler(0, rotY, 0) * offset;
            rotX += -Input.GetAxis("Mouse Y") * rotSpeedX * Time.deltaTime;
            rotX = Mathf.Clamp(rotX, -maxRotX, maxRotX);
        }
        else
        {
            Vector3 camTarget = playerController.centerPoint.position + Quaternion.Euler(0, rotY, 0) * offset;
            Vector3 lerpTarget = Vector3.Lerp(transform.position, playerController.centerPoint.position + Quaternion.Euler(0, rotY, 0) * offset, faintLerpSpeed * Time.deltaTime);
            camTarget.y = lerpTarget.y;
            transform.position = camTarget;

            offset.y = Mathf.Lerp(offset.y, 0.5f, faintLerpSpeed * Time.deltaTime);
            offset.z = Mathf.Lerp(offset.z, -1.5f, faintLerpSpeed * Time.deltaTime);
            rotX = Mathf.Lerp(rotX, 10, faintLerpSpeed * Time.deltaTime);
        }

        rotY += Input.GetAxis("Mouse X") * rotSpeedY * Time.deltaTime;
    }
}
