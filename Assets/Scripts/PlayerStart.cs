using UnityEngine;

public class PlayerStart : MonoBehaviour
{
    public Level level;

    void Awake()
    {
        if (level == GameDirector.CurrentLevel)
        {
            var player = GameObject.FindGameObjectWithTag("Player");
            player.transform.position = transform.position;
            player.transform.rotation = transform.rotation;
        }
    }
}
