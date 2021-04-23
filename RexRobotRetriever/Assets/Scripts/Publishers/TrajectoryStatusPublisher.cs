using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class TrajectoryStatusPublisher : MonoBehaviour
{
    public string topicName = "trajectory_status";

    private ROSConnection ros;

    public void Start()
    {
        ros = ROSConnection.instance;
    }
    
    public void Publish(bool status, int id)
    {
        var msg = new TrajectoryStatus(status, id);
        ros.Send(topicName, msg);
    }
}
