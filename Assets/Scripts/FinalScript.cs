using UnityEngine;
using UnityEngine.UI;

public class FinalScript : MonoBehaviour
{
    public GameDirector gameDirector;
    public AudioSource levelJingle;
    public AudioSource music;
    public Image image;
    public float fadeSpeed = 10;
    public float endTime = 5;
    bool isEscaped;

    void Start()
    {
    }

    void Update()
    {
        if (isEscaped)
        {
            Color color = image.color;
            color.a += fadeSpeed * Time.deltaTime;
            image.color = color;
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        if (!isEscaped && collider.tag == "Player")
        {
            Activate();
        }
    }

    void Activate()
    {
        isEscaped = true;
        GameDirector.Solve(Solution.FinalEscape);
        music.Stop();
        levelJingle.Play();
        Invoke("End", endTime);
    }

    void End()
    {
        gameDirector.OnLevelTransitionRequest();
    }
}
