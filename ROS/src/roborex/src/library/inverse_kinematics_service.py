# Greg Attra
# 04/03/2021

import rospy
import copy
import numpy as np

from library.forward_kinematics_engine import ForwardKinematicsEngine
from library.inverse_kinematics_engine import InverseKinematicsEngine
from roborex.msg import ArmPose, JointState
from roborex.srv import (ForwardKinematics, ForwardKinematicsRequest, ForwardKinematicsResponse,
                         InverseKinematics, InverseKinematicsRequest, InverseKinematicsResponse)

class InverseKinematicsService():

    def __init__(self):
        self.service = rospy.Service("inverse_kinematics", InverseKinematics, self.call)
        self.ik_engine = InverseKinematicsEngine()

     
    def call(self, req):
        wrist_target = np.array([
            req.wrist_target.position.x,
            req.wrist_target.position.y,
            req.wrist_target.position.z
        ])
        eff_target = np.array([
            req.eff_target.position.x,
            req.eff_target.position.y,
            req.eff_target.position.z
        ])
        traj = self.ik_engine.compute_body_ik(req.init_arm_pose, wrist_target, eff_target)
        res = InverseKinematicsResponse()
        res.arm_pose = traj
        return res