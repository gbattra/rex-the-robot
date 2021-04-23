using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using Unity.Robotics.ROSTCPConnector;
using UnityEngine;

public class InverseKinematicsService : MonoBehaviour
{
    [SerializeField] private RobotArmJoints arm;
    [SerializeField] private GameObject WristTarget;
    [SerializeField] private GameObject EffTarget;

    private ROSConnection ros;
    
    void Start()
    {
        ros = ROSConnection.instance;
    }

    public void Invoke()
    {
        ArmPose arm_pose = arm.GetArmPose();
        Vector3 wPos = WristTarget.transform.localPosition;
        Quaternion wRot = WristTarget.transform.localRotation;
        Vector3 ePos = arm.worldJoint.transform.InverseTransformPoint(EffTarget.transform.position);
        Quaternion eRot = EffTarget.transform.localRotation;

        InverseKinematicsRequest req = new InverseKinematicsRequest(
            arm_pose,
            new RosMessageTypes.Geometry.Pose(
                new RosMessageTypes.Geometry.Point(
                    wPos.x, wPos.y, wPos.z),
                new RosMessageTypes.Geometry.Quaternion(
                    wRot.x, wRot.y, wRot.z, wRot.w)),
            new RosMessageTypes.Geometry.Pose(
                new RosMessageTypes.Geometry.Point(
                    ePos.x, ePos.y, ePos.z),
                new RosMessageTypes.Geometry.Quaternion(
                    eRot.x, eRot.y, eRot.z, eRot.w)));
        
        ros.SendServiceMessage<InverseKinematicsResponse>("inverse_kinematics", req, Callback);
    }

    public void Callback(InverseKinematicsResponse res)
    {
        Trajectory traj = new Trajectory(new[] {res.arm_pose}, 10000);
        StartCoroutine(arm.FollowTrajectory(traj));
    }
}
