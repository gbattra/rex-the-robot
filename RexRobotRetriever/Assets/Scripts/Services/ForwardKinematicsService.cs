using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class ForwardKinematicsService : MonoBehaviour
{
    [SerializeField] private RobotArmJoints arm;
    [SerializeField] private GameObject sphere;
    [SerializeField] private Vector3 fkPosition;

    private ROSConnection ros;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Invoke()
    {
        ArmPose pose = arm.GetArmPose();
        JointState[] joints = new[]
        {
            pose.world_joint,
            pose.base_joint,
            pose.shoulder_joint,
            pose.elbow_joint,
            pose.wrist_joint,
            pose.eff_joint
        };
        ForwardKinematicsRequest req = new ForwardKinematicsRequest(joints);
        ros.SendServiceMessage<ForwardKinematicsResponse>("forward_kinematics", req, Callback);
    }

    public void Callback(ForwardKinematicsResponse res)
    {
        fkPosition = new Vector3(
            (float) res.target.position.x,
            (float) res.target.position.y,
            (float) res.target.position.z);
        sphere.transform.localPosition = fkPosition;

    }
}
