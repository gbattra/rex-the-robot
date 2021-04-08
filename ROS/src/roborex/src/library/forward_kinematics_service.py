# Greg Attra
# 03/30/2021

import rospy
import numpy as np

from library.forward_kinematics_engine import ForwardKinematicsEngine
from roborex.srv import ForwardKinematics, ForwardKinematicsRequest, ForwardKinematicsResponse


class ForwardKinematicsService():

    def __init__(self):
        self.serivice = rospy.Service("forward_kinematics", ForwardKinematics, self.call)
        self.fk_engine = ForwardKinematicsEngine()

    
    def call(self, req):
        res = ForwardKinematicsResponse()
        res.target = self.fk_engine.get_pose(req)
        return res
        