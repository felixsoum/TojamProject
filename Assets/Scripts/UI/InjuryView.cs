using UnityEngine;
using UnityEngine.UI;

public class InjuryView : MonoBehaviour
{
    public Image image;
    public Text text;
    public float textScaleFactor = 1.5f;
    public float textScaleSpeed = 10;

    Vector3 initialTextScale;

    void Awake()
    {
        initialTextScale = text.transform.localScale;
    }

    void Start()
    {
        var player = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>();
        player.OnInjuryUpdate += OnInjuryUpdate;
    }

    void Update()
    {
        text.transform.localScale = Vector3.Lerp(text.transform.localScale, initialTextScale, textScaleSpeed * Time.deltaTime);
    }

    private void OnInjuryUpdate(int injuryLevel)
    {
        image.color = new Color(1, 1 - injuryLevel/100f, 1 - injuryLevel/100f);
        text.text = injuryLevel.ToString() + "%";
        text.transform.localScale = initialTextScale * textScaleFactor;
    }
}
