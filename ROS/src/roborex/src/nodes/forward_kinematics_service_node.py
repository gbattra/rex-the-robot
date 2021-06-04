#!/usr/bin/env python

# Greg Attra
# 03/30/2021

import rospy

from roborex.msg import ArmPose
from library.services.forward_kinematics_service import ForwardKinematicsService


def main():
    rospy.init_node("forward_kinematics_service")
    s = ForwardKinematicsService()
    rospy.spin()


if __name__ == "__main__":
    main()
