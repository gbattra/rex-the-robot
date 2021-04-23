using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class StartSystemService : MonoBehaviour
{
    private ROSConnection ros;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Invoke()
    {
        var req = new StartSystemRequest(true);
        ros.SendServiceMessage<StartSystemResponse>("start_system", req, Callback);
    }

    public void Callback(StartSystemResponse res)
    {
        if (res.succeeded)
            Debug.Log("Started system...");
    }
}
