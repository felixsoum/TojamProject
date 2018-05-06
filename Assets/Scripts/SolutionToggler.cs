using UnityEngine;

public class SolutionToggler : MonoBehaviour
{
    public Solution solution;
    public GameObject[] toActivate;
    public GameObject[] toDeactivate;

    public void Activate()
    {
        foreach (var o in toActivate)
        {
            o.SetActive(true);
        }
    }

    public void Deactivate()
    {
        foreach (var o in toDeactivate)
        {
            o.SetActive(false);
        }
    }
}
