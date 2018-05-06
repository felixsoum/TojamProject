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
    DoublePunched = 4
}

public class GameDirector : MonoBehaviour
{
    public Level level;

    static bool[] isSolved = new bool[10];

    SolutionToggler[] togglers;

    void Awake()
    {
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

        GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>().OnLevelTransitionRequest += OnLevelTransitionRequest;
    }

    private void OnLevelTransitionRequest()
    {
        if (level == Level.PressMachine)
        {
            if (IsSolved(Solution.DrinkingBirdPress) && IsSolved(Solution.ThrowOnButton) && IsSolved(Solution.BreakGlassWithPC))
            {
                Cursor.lockState = CursorLockMode.None;
                SceneManager.LoadScene("Main");
            }
            else
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            }
        }
    }

    public static void ResetSolutions()
    {
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
