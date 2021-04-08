using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class CmdVelSubscriber : MonoBehaviour
{
    public MobileBaseController mobileBaseController;

    private void Start()
    {
        ROSConnection.instance.Subscribe<CmdVel>("cmd_vel", SetCmdVel);
    }

    private void SetCmdVel(CmdVel cmdVel)
    {
        mobileBaseController.velocityCmd = (float) cmdVel.linear;
        mobileBaseController.angleCmd = (float) cmdVel.angular * Mathf.Rad2Deg;
    }
}
