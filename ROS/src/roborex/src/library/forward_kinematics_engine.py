# Greg Attra
# 04/05/2021

import rospy
import numpy as np

from geometry_msgs.msg import Pose, Point, Quaternion


class ForwardKinematicsEngine:

    def get_pose(self, req):
        T = self.compute_forward_kinematics(req.joints)
        Q = self.rotation_to_quaternion(T[:3, :3])
        target = Pose(
            Point(T[0, 3], T[1,3], T[2, 3]),
            Q)
        return target

    # credit https://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/
    def rotation_to_quaternion(self, T):
        qw = np.sqrt(1 + T[0, 0] + T[1, 1] + T[2, 2]) / 2
        qx = (T[2, 1] - T[1, 2]) / (4 * qw)
        qy = (T[0, 2] - T[2, 0]) / (4 * qw)
        qz = (T[1, 0] - T[0, 1]) / (4 * qw)
        return Quaternion(qx, qy, qz, qw)

    
    def compute_forward_kinematics(self, joints):
        T = np.eye(4, 4)
        for joint in joints:
            T = np.matmul(T, self.transformation_matrix(joint))
        return T

    
    def transformation_matrix(self, joint):
        pos = joint.translation
        angle = joint.angle

        if (joint.axis == 0):
            return np.eye(4)
        elif (joint.axis ==1):
            t = self.transformX(angle, pos)
        elif (joint.axis == 2):
            t = self.transformY(angle, pos)
        else:
            t = self.transformZ(angle, pos)

        return t


    def transformX(self, angle, pos):
        return np.matrix(
        [
            [ 1.0, 0.0,            0.0,           pos.x ],
            [ 0.0, np.cos(angle), -np.sin(angle), pos.y ],
            [ 0.0, np.sin(angle),  np.cos(angle), pos.z ],
            [ 0.0, 0.0,            0.0,           1.0   ]
        ])


    def transformY(self, angle, pos):
        return np.matrix(
        [
            [  np.cos(angle), 0.0,  np.sin(angle), pos.x ],
            [  0.0,           1.0,  0.0,           pos.y ],
            [ -np.sin(angle), 0.0,  np.cos(angle), pos.z ],
            [  0.0,           0.0,  0.0,           1.0   ]
        ])

    def transformZ(self, angle, pos):
        return np.matrix(
        [
            [ np.cos(angle), -np.sin(angle), 0.0, pos.x ],
            [ np.sin(angle),  np.cos(angle), 0.0, pos.y ],
            [ 0.0,            0.0,           1.0, pos.z ],
            [ 0.0,            0.0,           0.0, 1.0   ]
        ])

