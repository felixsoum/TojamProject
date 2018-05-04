using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabbableMarker : MonoBehaviour
{
    public GameObject markerObject;
    public float markerLerpSpeed = 2;

    public float initialHeight = 0.75f;
    public float minHeight = 0.5f;

    void Update()
    {
        float height = Mathf.Lerp(initialHeight, minHeight, (Mathf.Sin(markerLerpSpeed * Time.timeSinceLevelLoad) + 1) / 2f);
        markerObject.transform.localPosition = new Vector3(0, height, 0);
    }
}
