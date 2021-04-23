using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class CommandSubscriber : MonoBehaviour
{
    public MobileBaseController mobileBaseController;

    private void Start()
    {
        ROSConnection.instance.Subscribe<Command>("command", SetCommand);
    }

    private void SetCommand(Command cmdVel)
    {
        mobileBaseController.velocityCmd = (float) cmdVel.linear;
        mobileBaseController.angleCmd = (float) cmdVel.angular * Mathf.Rad2Deg;
    }
}
