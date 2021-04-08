#!/usr/bin/env python

# Greg Attra
# 03/25/2021

import rospy

from ros_tcp_endpoint import TcpServer, RosPublisher, RosSubscriber, RosService
from roborex.msg import BasePose, CmdVel, ArmPose
from roborex.srv import TrajectoryPlanner, ForwardKinematics, InverseKinematics


def main():
    tcp_server = TcpServer("tcp_server", 1024, 1000)
    rospy.init_node("tcp_server", anonymous=True)

    tcp_server.start({
        "base_pose": RosPublisher("base_pose", BasePose, queue_size=1),
        "target_pose": RosPublisher("target_pose", BasePose, queue_size=1),
        "grip_goal_pose": RosPublisher("grip_goal_pose", BasePose, queue_size=1),
        "arm_pose": RosPublisher("arm_pose", ArmPose, queue_size=1),
        "cmd_vel": RosSubscriber("cmd_vel", CmdVel, tcp_server),
        "trajectory_planner": RosService("trajectory_planner", TrajectoryPlanner),
        "forward_kinematics": RosService("forward_kinematics", ForwardKinematics),
        "inverse_kinematics": RosService("inverse_kinematics", InverseKinematics)
    })

    rospy.spin()


if __name__ == "__main__":
    main()
