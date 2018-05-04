using UnityEngine;

public class LevelEndView : MonoBehaviour
{
    public GameObject levelEndObject;

    void Start()
    {
        GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>().OnLevelEnd += OnLevelEnd;
    }

    private void OnLevelEnd()
    {
        levelEndObject.SetActive(true);
    }
}
