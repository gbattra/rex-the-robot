using System;
using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Geometry;
using RosMessageTypes.Roborex;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;

public class RobotArmJoints : MonoBehaviour
{
    [SerializeField] private float jointSpeed = 0.1f;
    
    [SerializeField] public ArticulationBody worldJoint;
    [SerializeField] public ArticulationBody baseJoint;
    [SerializeField] public ArticulationBody shoulderJoint;
    [SerializeField] public ArticulationBody elbowJoint;
    [SerializeField] public ArticulationBody wristJoint;
    [SerializeField] public ArticulationBody effJoint;
    [SerializeField] public ArticulationBody rightGripper;
    [SerializeField] public ArticulationBody leftGripper;
    [SerializeField] public GameObject gripperOffset;

    private TrajectoryStatusPublisher _trajectoryStatusPublisher;

    public void Start()
    {
        _trajectoryStatusPublisher = GetComponent<TrajectoryStatusPublisher>();
    }

    public ArmPose GetArmPose()
    {
        Vector3 offsetPos = gripperOffset.transform.localPosition;
        JointState gripperOffsetJoint = new JointState();
        gripperOffsetJoint.translation = new Point(offsetPos.x, offsetPos.y, offsetPos.z);

        ArmPose armPose = new ArmPose(
            GetJointState(worldJoint, 0),
            GetJointState(baseJoint, 1),
            GetJointState(shoulderJoint, 3),
            GetJointState(elbowJoint, 3),
            GetJointState(wristJoint, 3),
            GetJointState(effJoint, 1),
            gripperOffsetJoint,
            GetJointState(rightGripper, 3),
            GetJointState(leftGripper, 3));

        return armPose;
    }

    public IEnumerator ExecuteTrajectories(Trajectory[] trajectories)
    {
        foreach (Trajectory trajectory in trajectories)
        {
            yield return StartCoroutine(StartTrajectory(trajectory));
        }

        yield return new WaitForSeconds(1);
    }

    public IEnumerator FollowTrajectory(Trajectory traj)
    {
        yield return StartCoroutine(StartTrajectory(traj));
    }

    private IEnumerator StartTrajectory(Trajectory traj)
    {
        foreach (ArmPose pose in traj.poses)
        {
            pose.world_joint.angle *= Mathf.Rad2Deg;
            pose.base_joint.angle *= Mathf.Rad2Deg;
            pose.shoulder_joint.angle *= Mathf.Rad2Deg;
            pose.elbow_joint.angle *= Mathf.Rad2Deg;
            pose.wrist_joint.angle *= Mathf.Rad2Deg;
            pose.eff_joint.angle *= Mathf.Rad2Deg;
            pose.right_gripper_joint.angle *= Mathf.Rad2Deg;
            pose.left_gripper_joint.angle *= Mathf.Rad2Deg;
            SetArmPose(pose);
            yield return new WaitForSeconds(jointSpeed);
        }
        _trajectoryStatusPublisher.Publish(true, traj.id);
    }

    public void SetArmPose(ArmPose pose)
    {
        SetDrive(worldJoint, pose.world_joint.angle);
        SetDrive(baseJoint, pose.base_joint.angle);
        SetDrive(shoulderJoint, pose.shoulder_joint.angle);
        SetDrive(elbowJoint, pose.elbow_joint.angle);
        SetDrive(wristJoint, pose.wrist_joint.angle);
        SetDrive(effJoint, pose.eff_joint.angle);
        SetDrive(rightGripper, pose.right_gripper_joint.angle);
        SetDrive(leftGripper, pose.left_gripper_joint.angle);
    }

    public void SetDrive(ArticulationBody joint, float target)
    {
        var drive = joint.xDrive;
        drive.target = target;
        joint.xDrive = drive;
    }

    private JointState GetJointState(ArticulationBody joint, int axis)
    {
        Vector3 position = joint.transform.localPosition;
        return new JointState(
            new RosMessageTypes.Geometry.Point(
                    position.x,
                    position.y,
                    position.z),
            joint.xDrive.target * Mathf.Deg2Rad,
            joint.xDrive.upperLimit * Mathf.Deg2Rad,
            joint.xDrive.lowerLimit * Mathf.Deg2Rad,
            axis);
    }
}
