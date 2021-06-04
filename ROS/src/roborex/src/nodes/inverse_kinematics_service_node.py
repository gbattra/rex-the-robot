#!/usr/bin/env python

# Greg Attra
# 04/03/2021

import rospy

from roborex.msg import ArmPose
from library.services.inverse_kinematics_service import InverseKinematicsService


def main():
    rospy.init_node("inverse_kinematics_service")
    s = InverseKinematicsService()
    rospy.spin()


if __name__ == "__main__":
    main()
