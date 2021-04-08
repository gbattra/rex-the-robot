# Greg Attra
# 04/07/2021

import rospy
import numpy as np
import copy

from library.forward_kinematics_engine import ForwardKinematicsEngine
from roborex.msg import ArmPose, JointState
from roborex.srv import (ForwardKinematics, ForwardKinematicsRequest, ForwardKinematicsResponse,
                         InverseKinematics, InverseKinematicsRequest, InverseKinematicsResponse)


class InverseKinematicsEngine:
    
    def __init__(self):
       self.fk_engine = ForwardKinematicsEngine()


    def call(self, req):
        traj = self.compute_body_ik(req.init_arm_pose, req.wrist_target, req.eff_target)
        return InverseKinematicsResponse()


    def compute_body_ik(self, arm_pose, wrist_target, eff_target):
        curr_pose = copy.deepcopy(arm_pose)
        dx = np.array([1, 1, 1])
        alpha =  0.01
        epsilon = 0.01
        max_iter = 1000
        i = 0
        while np.linalg.norm(dx) > epsilon and i < max_iter:
            wrist_pos = self.get_wrist_pos(curr_pose) + 0.0
            eff_pos = self.get_eff_pos(curr_pose) + 0.0

            dx_wrist = np.round(wrist_target - wrist_pos, 4) + 0.0
            dx_eff = np.round(eff_target - eff_pos, 4) + 0.0
            dxn_wrist = np.round(alpha * (dx_wrist / np.linalg.norm(dx_wrist)), 4) + 0.0
            dxn_eff = np.round(alpha * (dx_eff / np.linalg.norm(dx_eff)), 4) + 0.0
            dxn = np.hstack((dxn_wrist, dxn_eff))

            J_wrist = self.get_wrist_jacob(curr_pose, wrist_pos)
            J_eff = self.get_eff_jacob(curr_pose, eff_pos)
            J = np.vstack((J_wrist, J_eff))
            J_inv = np.round((np.linalg.pinv(J)), 4) + 0.0

            dq = J_inv.dot(np.expand_dims(dxn, axis=1))
            dq = np.round(dq, 4) + 0.0
            curr_pose = self.update_curr_pose(curr_pose, dq)

            i += 1
        return curr_pose


    def update_curr_pose(self, pose, dq):
        new_base_angle = pose.base_joint.angle + dq[0, 0]
        new_shoulder_angle = pose.shoulder_joint.angle + dq[1, 0]
        new_elbow_angle = pose.elbow_joint.angle + dq[2, 0]
        new_wrist_angle = pose.wrist_joint.angle + dq[3, 0]

        new_base_angle = np.clip(new_base_angle, -2*np.pi, 2*np.pi)
        new_shoulder_angle = np.clip(new_shoulder_angle, pose.shoulder_joint.lower_bound, pose.shoulder_joint.upper_bound)
        new_elbow_angle = np.clip(new_elbow_angle, pose.elbow_joint.lower_bound, pose.elbow_joint.upper_bound)
        new_wrist_angle = np.clip(new_wrist_angle, pose.wrist_joint.lower_bound, pose.wrist_joint.upper_bound)

        pose.base_joint.angle = new_base_angle + 0.0
        pose.shoulder_joint.angle = new_shoulder_angle + 0.0
        pose.elbow_joint.angle = new_elbow_angle + 0.0
        pose.wrist_joint.angle = new_wrist_angle + 0.0
        return pose

    
    def get_wrist_pos(self, arm_pose):
        req = ForwardKinematicsRequest()
        req.joints = [
            arm_pose.world_joint,
            arm_pose.base_joint,
            arm_pose.shoulder_joint,
            arm_pose.elbow_joint,
            arm_pose.wrist_joint
        ]
        pos = self.fk_engine.get_pose(req).position

        return np.round(np.array([pos.x, pos.y, pos.z]), 4)


    def get_eff_pos(self, arm_pose):
        req = ForwardKinematicsRequest()
        req.joints = [
            arm_pose.world_joint,
            arm_pose.base_joint,
            arm_pose.shoulder_joint,
            arm_pose.elbow_joint,
            arm_pose.wrist_joint,
            arm_pose.eff_joint
        ]
        pos = self.fk_engine.get_pose(req).position

        return np.round(np.array([pos.x, pos.y, pos.z]), 4)


    def get_eff_jacob(self, arm_pose, pos):
        jacob = np.zeros((3, 4), dtype=np.float)
        base_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint
            ], pos)
        shoulder_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint,
                arm_pose.shoulder_joint
            ], pos)
        elbow_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint,
                arm_pose.shoulder_joint,
                arm_pose.elbow_joint
            ], pos)
        wrist_jacob = self.get_joint_jacob(
        [
            arm_pose.world_joint,
            arm_pose.base_joint,
            arm_pose.shoulder_joint,
            arm_pose.elbow_joint,
            arm_pose.wrist_joint
        ], pos)

        jacob[:, 0] = base_jacob
        jacob[:, 1] = shoulder_jacob
        jacob[:, 2] = elbow_jacob
        jacob[:, 3] = wrist_jacob

        return jacob
    
    
    def get_wrist_jacob(self, arm_pose, pos):
        jacob = np.zeros((3, 4), dtype=np.float)
        base_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint
            ], pos)
        shoulder_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint,
                arm_pose.shoulder_joint
            ], pos)
        elbow_jacob = self.get_joint_jacob(
            [
                arm_pose.world_joint,
                arm_pose.base_joint,
                arm_pose.shoulder_joint,
                arm_pose.elbow_joint
            ], pos)

        jacob[:, 0] = base_jacob
        jacob[:, 1] = shoulder_jacob
        jacob[:, 2] = elbow_jacob

        return jacob

    
    def get_joint_jacob(self, joints, pos):
        req = ForwardKinematicsRequest()
        req.joints = joints
        joint_pos = self.fk_engine.get_pose(req).position
        joint_pos = np.round(np.array([joint_pos.x, joint_pos.y, joint_pos.z]), 4) + 0.0
        axis = np.zeros(3)
        axis[joints[-1].axis - 1] = 1.0
        pos_delta = (pos - joint_pos).reshape((3,)) + 0.0
        joint_jacob = np.round(np.cross(axis, pos_delta), 4) + 0.0
        return joint_jacob
