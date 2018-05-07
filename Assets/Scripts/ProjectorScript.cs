using UnityEngine;

public class ProjectorScript : MonoBehaviour
{
    public Material[] materials;
    public float timePerSlide = 3;
    public MeshRenderer meshRenderer;

    int currentIndex;

    void Awake()
    {
        InvokeRepeating("NextSlide", timePerSlide, timePerSlide);
    }

    void NextSlide()
    {
        currentIndex++;
        currentIndex %= materials.Length;
        meshRenderer.material = materials[currentIndex];
    }
}
