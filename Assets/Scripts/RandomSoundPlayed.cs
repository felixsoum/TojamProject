using UnityEngine;

public class RandomSoundPlayed : MonoBehaviour
{
    public AudioSource[] sounds;
    public float soundPeriod = 5;

    void Start()
    {
        Invoke("PlaySound", soundPeriod);
    }

    void PlaySound()
    {
        int randIndex = Random.Range(0, sounds.Length);
        sounds[randIndex].Play();
        Invoke("PlaySound", soundPeriod);
    }
}
