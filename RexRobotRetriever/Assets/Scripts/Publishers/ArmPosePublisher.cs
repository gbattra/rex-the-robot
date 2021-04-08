using RosMessageTypes.Geometry;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;
using Quaternion = UnityEngine.Quaternion;
using Vector3 = UnityEngine.Vector3;

public class ArmPosePublisher : MonoBehaviour
{
    [SerializeField] private string topicName = "arm_pose";
    [SerializeField] private RobotArmJoints arm;
    [SerializeField] private float publishMessageFrequency = 0.25f;

    private ROSConnection ros;
    private float timeElapsed;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Update()
    {
        timeElapsed += Time.deltaTime;
        
        if (timeElapsed < publishMessageFrequency) return;

        ArmPose armPose = arm.GetArmPose();
        ros.Send(topicName, armPose);
        
        timeElapsed = 0;
    }

    
}
