using UnityEngine;

public class GroundKill : MonoBehaviour
{
    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {
            collision.collider.GetComponent<PlayerController>().OnHit(new HitInfo(100, Vector3.up));
        }
    }
}
