using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class BasePosePublisher : MonoBehaviour
{
    public string topicName = "base_pose";
    public GameObject mobileBase;
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
        
        Transform tf = mobileBase.transform;
        Vector3 pos = tf.position;
        Vector3 pos_d = pos + tf.forward.normalized;
        float angle = Mathf.Atan2(pos_d.z - pos.z, pos_d.x - pos.x);
        BasePose basePose = new BasePose(pos.x, pos.y, pos.z, angle);
        ros.Send(topicName, basePose);
        
        timeElapsed = 0;
    }
}
