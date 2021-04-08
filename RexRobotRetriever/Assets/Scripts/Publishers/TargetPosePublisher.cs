using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;
using UnityEngine.UI;

public class TargetPosePublisher : MonoBehaviour
{
    public string topicName = "target_pose";
    public GameObject mobileBase;
    public GameObject targetCube;
    public float publishMessageFrequency = 0.1f;

    private ROSConnection ros;
    private float timeElapsed;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Update()
    {
        timeElapsed += Time.deltaTime;
        
        if (timeElapsed < publishMessageFrequency) return;

        Publish();

        timeElapsed = 0;
    }

    public void Publish()
    {
        Vector3 mpos = mobileBase.transform.position;
        Vector3 tpos = targetCube.transform.position;
        float angle = Mathf.Atan2(tpos.z - mpos.z, tpos.x - mpos.x);
        BasePose basePose = new BasePose(tpos.x, tpos.y, tpos.z, angle);
        ros.Send(topicName, basePose);
    }
}
