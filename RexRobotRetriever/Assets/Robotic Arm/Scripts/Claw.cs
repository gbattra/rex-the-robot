using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Claw : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField ]Animator ClawAnimator;
    [SerializeField] Slider[] Robotic_slider;
    [SerializeField] GameObject[] Robotic_obj;
    [SerializeField] Text[] RotationText;
    bool IsPressed=false;
    Button ClawButton;
    void Start()
    {

        ClawButton= GameObject.Find("ClawButton").GetComponent<Button>();

        ClawAnimator.enabled = false;
        Robotic_slider[0].onValueChanged.AddListener(delegate { OnSliderChanged(Robotic_slider[0].value, 0, 180); });
        Robotic_slider[1].onValueChanged.AddListener(delegate { OnSliderChanged(Robotic_slider[1].value, 1, 180); });
        Robotic_slider[2].onValueChanged.AddListener(delegate { OnSliderChanged(Robotic_slider[2].value, 2, 180); });
        Robotic_slider[3].onValueChanged.AddListener(delegate { OnSliderChanged(Robotic_slider[3].value, 3, 180); });
        Robotic_slider[4].onValueChanged.AddListener(delegate { OnSliderChanged(Robotic_slider[4].value, 4, 180); });

    }

    // Update is called once per frame
    void Update()
    {
        for(int i=0;i<=RotationText.Length-1;i++)
        {
            RotationText[i].text = Robotic_slider[i].value.ToString("F1");
        }
       

    }
    public void OpenClose()
    {
        ClawAnimator.enabled = true;

        if (!IsPressed)
        {
            ClawButton.GetComponent<Image>().color = Color.green;
            ClawAnimator.SetBool("IsOpen", true);
            IsPressed = true;
        }
        else
        {
            ClawButton.GetComponent<Image>().color = Color.red;
            ClawAnimator.SetBool("IsOpen", false);
            IsPressed = false;
        }

    }
    void OnSliderChanged(float value, int i, float rotationvalue)
    {
        
        if(i==4||i==0)
        {
            Robotic_obj[i].transform.localRotation = Quaternion.Euler(0, Robotic_slider[i].value, 0 );
        }
        
        else
        {
            Robotic_obj[i].transform.localRotation = Quaternion.Euler(0, 0, Robotic_slider[i].value);
        }
    }
}
