using UnityEngine;

public class SolutionToggler : MonoBehaviour
{
    public Solution solution;
    public GameObject[] toActivate;
    public GameObject[] toDeactivate;

    public void Activate()
    {
        if (toActivate.Length > 0)
        {
            foreach (var o in toActivate)
            {
                if (o)
                {
                    o.SetActive(true);

                }
            }
        }
    }

    public void Deactivate()
    {
        if (toDeactivate.Length > 0)
        {
            foreach (var o in toDeactivate)
            {
                if (o)
                {
                    o.SetActive(false);

                }
            }
        }
    }
}
