using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class GripperGoalPosePublisher : MonoBehaviour
{
    [SerializeField] private string topicName = "grip_goal_pose";
    [SerializeField] private RobotArmJoints arm;
    [SerializeField] private GameObject target;
    [SerializeField] private float publishMessageFrequency = 0.1f;

    private ROSConnection ros;
    private float timeElapsed;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    private void Update()
    {
        timeElapsed += Time.deltaTime;
        
        if (timeElapsed < publishMessageFrequency) return;

        Quaternion orientation = Quaternion.FromToRotation(arm.transform.forward, target.transform.forward);
        Vector3 position = target.transform.position - arm.transform.position;
        BasePose gripperGoalPose = new BasePose(position.x, position.y, position.z, orientation.eulerAngles.y);
        ros.Send(topicName, gripperGoalPose);
        
        timeElapsed = 0;
    }
}
