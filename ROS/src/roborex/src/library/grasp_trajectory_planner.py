# Greg Attra
# 04/07/2021

import rospy
import copy
import numpy as np

from library.inverse_kinematics_engine import InverseKinematicsEngine
from roborex.msg import ArmPose, Trajectory


class GraspTrajectoryPlanner:

    def __init__(self):
        self.ikine = InverseKinematicsEngine()


    def plan_trajectory(self, arm_pose, target, eff_offset, gripper_offset):
        target = np.array([target.position.x, target.position.y, target.position.z])
        offset_wrist_target, offset_eff_target = self.get_targets(arm_pose, target, eff_offset, gripper_offset)

        pose_offset = self.ikine.compute_body_ik(arm_pose, offset_wrist_target, offset_eff_target)
        
        pose_open = copy.deepcopy(pose_offset)
        pose_open.left_gripper_joint = True
        pose_open.right_gripper_joint = True

        inset_wrist_target, inset_eff_target = self.get_targets(arm_pose, target, eff_offset, 0)
        pose_inset = self.ikine.compute_body_ik(pose_open, inset_wrist_target, inset_eff_target)

        pose_close = copy.deepcopy(pose_inset)
        pose_close.left_gripper_joint = False
        pose_close.right_gripper_joint = False

        pose_raise = copy.deepcopy(pose_close)
        pose_raise.shoulder_joint.angle = 0.0
        pose_raise.elbow_joint.angle = np.pi / 4.0
        pose_raise.wrist_joint.angle = 0.0

        linespace_paths = []
        linespace_paths.append(self.pose_to_linespace(arm_pose, pose_offset, 40))

        open_traj = Trajectory()
        open_traj.poses = [pose_open]
        linespace_paths.append(open_traj)

        linespace_paths.append(self.pose_to_linespace(pose_open, pose_inset, 30))

        close_traj = Trajectory()
        close_traj.poses = [pose_close]
        linespace_paths.append(close_traj)

        linespace_paths.append(self.pose_to_linespace(pose_close, pose_raise, 40))
        return linespace_paths


    def get_targets(self, arm_pose, target, eff_offset, gripper_offset):
        mag = np.linalg.norm(target)
        eff_target = (target / mag) * (mag - gripper_offset - eff_offset)
        eff_mag = np.linalg.norm(eff_target)
        eff_translation = np.array([
            arm_pose.wrist_joint.translation.x,
            arm_pose.wrist_joint.translation.y,
            arm_pose.wrist_joint.translation.z])
        wrist_target = (eff_target / eff_mag) * (eff_mag - np.linalg.norm(eff_translation))
        return wrist_target, eff_target
    
    def pose_to_linespace(self, one, two, n):
        start = np.array([
            one.base_joint.angle,
            one.shoulder_joint.angle,
            one.elbow_joint.angle,
            one.wrist_joint.angle
        ])
        end = np.array([
            two.base_joint.angle,
            two.shoulder_joint.angle,
            two.elbow_joint.angle,
            two.wrist_joint.angle
        ])

        path = np.linspace(start, end, n)

        poses = []
        for pose in path:
            p = ArmPose()
            p.base_joint.angle = pose[0]
            p.shoulder_joint.angle = pose[1]
            p.elbow_joint.angle = pose[2]
            p.wrist_joint.angle = pose[3]
            p.right_gripper_joint = two.right_gripper_joint
            p.left_gripper_joint = two.left_gripper_joint
            poses.append(p)

        trajectory = Trajectory()
        trajectory.poses = poses
        
        return trajectory
