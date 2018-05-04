using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushButton : MonoBehaviour
{
    public GameObject buttonMesh;
    public float pushedScaleY;
    public Material pushMat;

    Material releaseMat;
    int triggerCount;
    Vector3 initialScale;
    MeshRenderer buttonMeshRenderer;

    void Awake()
    {
        initialScale = buttonMesh.transform.localScale;
        buttonMeshRenderer = buttonMesh.GetComponent<MeshRenderer>();
        releaseMat = buttonMeshRenderer.material;
    }

    void OnTriggerEnter(Collider collider)
    {
        if (triggerCount++ == 0)
        {
            Push();
        }
    }

    void OnTriggerExit(Collider collider)
    {
        if (--triggerCount == 0)
        {
            Release();
        }
    }

    void Push()
    {
        buttonMesh.transform.localScale = new Vector3(initialScale.x, pushedScaleY, initialScale.z);
        buttonMeshRenderer.material = pushMat;
    }

    void Release()
    {
        buttonMesh.transform.localScale = initialScale;
        buttonMeshRenderer.material = releaseMat;
    }
}
