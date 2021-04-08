using System.Collections;
using System.Collections.Generic;
using RosMessageTypes.Roborex;
using UnityEngine;

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
    
    public ArmPose GetArmPose()
    {
        ArmPose armPose = new ArmPose(
            GetJointState(worldJoint, 0),
            GetJointState(baseJoint, 1),
            GetJointState(shoulderJoint, 3),
            GetJointState(elbowJoint, 3),
            GetJointState(wristJoint, 3),
            GetJointState(effJoint, 1),
            rightGripper.xDrive.target > 0,
            leftGripper.xDrive.target > 0);
        armPose.base_joint.angle /= -1.0f;

        return armPose;
    }

    public IEnumerator ExecuteTrajectories(Trajectory[] trajectories)
    {
        foreach (Trajectory trajectory in trajectories)
        {
            yield return StartCoroutine(StartTrajectory(trajectory.poses));
        }

        yield return new WaitForSeconds(1);
    }

    public IEnumerator FollowTrajectory(ArmPose[] poses)
    {
        yield return StartCoroutine(StartTrajectory(poses));
    }

    private IEnumerator StartTrajectory(ArmPose[] poses)
    {
        foreach (ArmPose pose in poses)
        {
            pose.world_joint.angle *= Mathf.Rad2Deg;
            pose.base_joint.angle *= Mathf.Rad2Deg;
            pose.shoulder_joint.angle *= Mathf.Rad2Deg;
            pose.elbow_joint.angle *= Mathf.Rad2Deg;
            pose.wrist_joint.angle *= Mathf.Rad2Deg;
            pose.eff_joint.angle *= Mathf.Rad2Deg;
            SetArmPose(pose);
            yield return new WaitForSeconds(jointSpeed);
        }
    }

    public void SetArmPose(ArmPose pose)
    {
        SetDrive(worldJoint, pose.world_joint.angle);
        SetDrive(baseJoint, -pose.base_joint.angle);
        SetDrive(shoulderJoint, pose.shoulder_joint.angle);
        SetDrive(elbowJoint, pose.elbow_joint.angle);
        SetDrive(wristJoint, pose.wrist_joint.angle);
        SetDrive(effJoint, pose.eff_joint.angle);
        SetDrive(rightGripper, pose.right_gripper_joint ? rightGripper.xDrive.upperLimit : rightGripper.xDrive.lowerLimit);
        SetDrive(leftGripper, pose.left_gripper_joint ? leftGripper.xDrive.upperLimit : leftGripper.xDrive.lowerLimit);
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
