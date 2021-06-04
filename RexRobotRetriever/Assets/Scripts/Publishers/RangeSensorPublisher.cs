using System.Collections;
using System.Collections.Generic;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class RangeSensorPublisher : MonoBehaviour
{
    [SerializeField] private string topicName = "range_sensor";

    private ROSConnection ros;
    private float timeElapsed;

    public void Start()
    {
        ros = ROSConnection.instance;
    }
    
    public void Publish()
    {
        Debug.Log("Detection made!");
        var msg = new RosMessageTypes.Std.Bool(true);
        ros.Send(topicName, msg);
    }
}
