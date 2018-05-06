using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LevelButton : MonoBehaviour
{
    public string levelName;
    public Text text;

    void Awake()
    {
        text.text = levelName;
    }

    public void StartLevel()
    {
        GameDirector.ResetSolutions();
        SceneManager.LoadScene(levelName);
    }
}
