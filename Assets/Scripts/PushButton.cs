using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushButton : MonoBehaviour
{
    public List<MonoBehaviour> triggerableScripts;
    public GameObject buttonMesh;
    public float pushedScaleY;
    public Material pushMat;
    public float timeBeforeRelease = 2;

    Material releaseMat;
    int triggerCount;
    Vector3 initialScale;
    MeshRenderer buttonMeshRenderer;
    float releaseTimer;

    void Awake()
    {
        initialScale = buttonMesh.transform.localScale;
        buttonMeshRenderer = buttonMesh.GetComponent<MeshRenderer>();
        releaseMat = buttonMeshRenderer.material;
    }

    void OnTriggerEnter(Collider collider)
    {
        Push();
    }

    void Update()
    {
        if (releaseTimer > 0)
        {
            releaseTimer -= Time.deltaTime;
            if (releaseTimer < 0)
            {
                releaseTimer = 0;
                Release();
            }
        }
    }

    void Push()
    {
        if (releaseTimer == 0)
        {
            releaseTimer = timeBeforeRelease;
            buttonMesh.transform.localScale = new Vector3(initialScale.x, pushedScaleY, initialScale.z);
            buttonMeshRenderer.material = pushMat;

            foreach (var triggerableScript in triggerableScripts)
            {
                if (triggerableScript.gameObject)
                {
                    var triggerable = (ITriggerable)triggerableScript;
                    triggerable.Trigger();
                }
            }
        }
    }

    void Release()
    {
        buttonMesh.transform.localScale = initialScale;
        buttonMeshRenderer.material = releaseMat;
    }
}
