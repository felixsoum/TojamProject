using UnityEngine;

public class GroundKill : MonoBehaviour
{
    public Solution solution;

    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {
            collision.collider.GetComponent<PlayerController>().OnHit(new HitInfo(100, Vector3.up));
            GameDirector.Solve(solution);
        }
    }
}
