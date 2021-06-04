# Greg Attra
# 04/05/2021

import rospy
import numpy as np

from geometry_msgs.msg import Pose, Point, Quaternion


class ForwardKinematicsEngine:

    def get_pose(self, req):
        T = self.compute_forward_kinematics(req.joints)
        target = Pose(
            Point(T[0, 3], T[1,3], T[2, 3]),
            Quaternion(0, 0, 0, 0))
        return target

    
    def compute_forward_kinematics(self, joints):
        T = np.eye(4, 4)
        for joint in joints:
            T = np.matmul(T, self.transformation_matrix(joint))
        return T

    
    def transformation_matrix(self, joint):
        pos = joint.translation
        angle = joint.angle

        if (joint.axis == 0):
            t = np.eye(4)
            t[0, 3] = pos.x
            t[1, 3] = pos.y
            t[2, 3] = pos.z
        elif (joint.axis ==1):
            t = self.transformX(angle, pos)
        elif (joint.axis == 2):
            t = self.transformY(angle, pos)
        elif (joint.axis == 3):
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

