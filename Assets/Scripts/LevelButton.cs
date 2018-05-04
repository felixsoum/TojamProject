using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LevelButton : MonoBehaviour
{
    public string levelName;
    public Text text;

    void Awake()
    {
        Debug.Log("hello");
        text.text = levelName;
    }

    public void StartLevel()
    {
        SceneManager.LoadScene(levelName);
    }
}
