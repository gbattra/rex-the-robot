using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class ReleasePosePublisher : MonoBehaviour
{
    public string topicName = "release_pose";
    public RobotArmJoints arm;
    public GameObject releasePose;
    public float publishMessageFrequency = 0.1f;

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
        
        var pos = arm.worldJoint.transform.InverseTransformPoint(releasePose.transform.position);
        var pose = new RosMessageTypes.Geometry.Pose(
            new RosMessageTypes.Geometry.Point(pos.x, pos.y, pos.z),
            new RosMessageTypes.Geometry.Quaternion());
        ros.Send(topicName, pose);
        
        timeElapsed = 0;
    }
}
