using UnityEngine;

public class LevelEndView : MonoBehaviour
{
    public GameObject levelEndObject;
    public AudioSource levelJingle;

    void Start()
    {
        GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>().OnLevelEnd += OnLevelEnd;
    }

    private void OnLevelEnd()
    {
        levelJingle.Play();
        levelEndObject.SetActive(true);
    }
}
