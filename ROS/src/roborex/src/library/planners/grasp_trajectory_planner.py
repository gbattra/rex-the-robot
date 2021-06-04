# Greg Attra
# 04/07/2021

import rospy
import copy
import numpy as np

from library.planners.probabilistic_roadmap import ProbabilisticRoadmap
from library.engines.inverse_kinematics_engine import InverseKinematicsEngine
from roborex.msg import ArmPose, Trajectory


class GraspTrajectoryPlanner:

    def __init__(self):
        self.prm = ProbabilisticRoadmap()
        self.ikine = InverseKinematicsEngine()


    def plan_trajectory(self, arm_pose, target):
        target = np.array([target.position.x, target.position.y, target.position.z])
        
        pose_open = copy.deepcopy(arm_pose)
        pose_open.left_gripper_joint.angle = pose_open.left_gripper_joint.upper_bound
        pose_open.right_gripper_joint.angle = pose_open.right_gripper_joint.upper_bound

        if not self.prm.built:
            self.prm.build_graph(1500, 5, arm_pose)
        approx_pose = self.prm.plan(pose_open, target)[-1]
        pose_offset = self.ikine.compute_ik(approx_pose, target)

        pose_close = copy.deepcopy(pose_offset)
        pose_close.left_gripper_joint.angle = pose_close.left_gripper_joint.lower_bound
        pose_close.right_gripper_joint.angle = pose_close.right_gripper_joint.lower_bound

        pose_raise = copy.deepcopy(pose_close)
        pose_raise.shoulder_joint.angle = 0.0
        pose_raise.elbow_joint.angle = np.pi / 4.0
        pose_raise.wrist_joint.angle = 0.0

        linespace_paths = []

        linespace_paths.append(self.traj_to_linespace(arm_pose, pose_open, 20))
        linespace_paths.append(self.traj_to_linespace(pose_open, pose_offset, 40))
        linespace_paths.append(self.traj_to_linespace(pose_offset, pose_close, 20))
        linespace_paths.append(self.traj_to_linespace(pose_close, pose_raise, 40))

        return linespace_paths

    
    def traj_to_linespace(self, one, two, n):
        start = np.array([
            one.base_joint.angle,
            one.shoulder_joint.angle,
            one.elbow_joint.angle,
            one.wrist_joint.angle,
            one.right_gripper_joint.angle,
            one.left_gripper_joint.angle
        ])
        end = np.array([
            two.base_joint.angle,
            two.shoulder_joint.angle,
            two.elbow_joint.angle,
            two.wrist_joint.angle,
            two.right_gripper_joint.angle,
            two.left_gripper_joint.angle
        ])

        path = np.linspace(start, end, n)

        poses = []
        for pose in path:
            p = ArmPose()
            p.base_joint.angle = pose[0]
            p.shoulder_joint.angle = pose[1]
            p.elbow_joint.angle = pose[2]
            p.wrist_joint.angle = pose[3]
            p.right_gripper_joint.angle = pose[4]
            p.left_gripper_joint.angle = pose[5]
            poses.append(p)

        trajectory = Trajectory()
        trajectory.poses = poses
        trajectory.id = np.random.randint(1000)
        
        return trajectory
