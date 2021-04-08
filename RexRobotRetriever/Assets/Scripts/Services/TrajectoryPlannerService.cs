using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class TrajectoryPlannerService : MonoBehaviour
{
    [SerializeField] private float gripperOffset;
    [SerializeField] private float effOffset;
    [SerializeField] private RobotArmJoints arm;
    [SerializeField] private GameObject target;

    private ROSConnection ros;

    public void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Invoke()
    {
        ArmPose pose = arm.GetArmPose();
        var pos = arm.worldJoint.transform.InverseTransformPoint(target.transform.position);
        TrajectoryPlannerRequest req = new TrajectoryPlannerRequest(
            pose,
            new RosMessageTypes.Geometry.Pose(
                new RosMessageTypes.Geometry.Point(
                    pos.x,
                    pos.y,
                    pos.z),
                 new RosMessageTypes.Geometry.Quaternion(0, 0, 0, 0)),
            gripperOffset,
            effOffset);
        ros.SendServiceMessage<TrajectoryPlannerResponse>("trajectory_planner", req, Callback);
    }

    public void Callback(TrajectoryPlannerResponse res)
    {
        Debug.Log("started coroutine");
        StartCoroutine(arm.ExecuteTrajectories(res.trajectories));
    }
}
