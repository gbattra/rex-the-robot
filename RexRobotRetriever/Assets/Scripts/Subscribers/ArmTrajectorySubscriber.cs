using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class ArmTrajectorySubscriber : MonoBehaviour
{
    public RobotArmJoints arm;

    private void Start()
    {
        ROSConnection.instance.Subscribe<Trajectories>("arm_trajectories", SetTrajectories);
    }

    private void SetTrajectories(Trajectories msg)
    {
        StartCoroutine(arm.ExecuteTrajectories(msg.trajectories));
    }
}
