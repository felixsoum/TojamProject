using UnityEngine;
using UnityEngine.SceneManagement;

public enum Level
{
    PressMachine,
    KitchenWorkstation,
    Final
}

public enum Solution
{
    DrinkingBirdPress = 0,
    ThrowOnButton = 1,
    BreakGlassWithPC = 2,
    PunchedThroughGlass = 3,
    DoublePunched = 4,
    KnifeKill = 5,
    FinalEscape = 6
}

public class GameDirector : MonoBehaviour
{
    public static Level CurrentLevel = Level.PressMachine;

    static bool[] isSolved = new bool[10];

    public GameObject[] finalToggleToActivate;
    public GameObject[] finalToggleToDeactivate;
    SolutionToggler[] togglers;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            SceneManager.LoadScene("Main");
        }
    }

    void Awake()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        togglers = GetComponents<SolutionToggler>();

        foreach (var toggler in togglers)
        {
            if (IsSolved(toggler.solution))
            {
                toggler.Activate();
            }
        }

        foreach(var toggler in togglers)
        {
            if (IsSolved(toggler.solution))
            {
                toggler.Deactivate();
            }
        }

        if (CurrentLevel == Level.Final)
        {
            if (finalToggleToActivate.Length > 0)
            {
                foreach (var o in finalToggleToActivate)
                {
                    o.SetActive(true);
                }
            }

            if (finalToggleToDeactivate.Length > 0)
            {
                foreach (var o in finalToggleToDeactivate)
                {
                    o.SetActive(false);
                }
            }
        }

        GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>().OnLevelTransitionRequest += OnLevelTransitionRequest;
    }

    private void OnLevelTransitionRequest()
    {
        if (CurrentLevel == Level.PressMachine)
        {
            if (IsSolved(Solution.DrinkingBirdPress) && IsSolved(Solution.ThrowOnButton) && IsSolved(Solution.BreakGlassWithPC))
            {
                CurrentLevel = Level.KitchenWorkstation;
            }
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
        else if (CurrentLevel == Level.KitchenWorkstation)
        {
            if (IsSolved(Solution.PunchedThroughGlass) && IsSolved(Solution.DoublePunched) && IsSolved(Solution.KnifeKill))
            {
                CurrentLevel = Level.Final;
            }
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
        else if (CurrentLevel == Level.Final)
        {
            SceneManager.LoadScene("Credits");
        }
    }

    public static void ResetGame()
    {
        CurrentLevel = Level.PressMachine;
        for (int i = 0; i < isSolved.Length; i++)
        {
            isSolved[i] = false;
        }
    }

    public static void Solve(Solution solution)
    {
        Debug.Log("Solved: " + solution);
        isSolved[(int)solution] = true;
    }

    static bool IsSolved(Solution solution)
    {
        return isSolved[(int)solution];
    }
}
