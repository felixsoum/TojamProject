using UnityEngine;

public class Door : MonoBehaviour
{
    public GameObject key;
    const float KeyActivateDistance = 1.5f;

    void Update()
    {
        if (key && Vector3.Distance(key.transform.position, transform.position) <= KeyActivateDistance)
        {
            gameObject.SetActive(false);
        }
    }
}
