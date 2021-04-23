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

        var pos = arm.worldJoint.transform.InverseTransformPoint(target.transform.position);
        var pose = new RosMessageTypes.Geometry.Pose(
            new RosMessageTypes.Geometry.Point(pos.x, pos.y, pos.z),
            new RosMessageTypes.Geometry.Quaternion());
        ros.Send(topicName, pose);
        
        timeElapsed = 0;
    }
}
