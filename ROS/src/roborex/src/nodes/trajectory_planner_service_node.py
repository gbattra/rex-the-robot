#!/usr/bin/env python

# Greg Attra
# 03/29/2021

import rospy

from roborex.msg import ArmPose
from library.services.trajectory_planner_service import TrajectoryPlannerService


def main():
    rospy.init_node("trajectory_planner_service")
    s = TrajectoryPlannerService()
    rospy.spin()


if __name__ == "__main__":
    main()
