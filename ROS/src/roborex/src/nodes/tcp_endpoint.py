#!/usr/bin/env python

# Greg Attra
# 03/25/2021

import rospy

from geometry_msgs.msg import Pose
from ros_tcp_endpoint import TcpServer, RosPublisher, RosSubscriber, RosService
from roborex.msg import BasePose, Command, ArmPose, Trajectories, TrajectoryStatus
from roborex.srv import TrajectoryPlanner, ForwardKinematics, InverseKinematics, StartSystem
from std_msgs.msg import Empty


def main():
    tcp_server = TcpServer("tcp_server", 1024, 10)
    rospy.init_node("tcp_server", anonymous=True)

    tcp_server.start({
        # subscribers
        "base_pose": RosPublisher("base_pose", BasePose, queue_size=1),
        "target_pose": RosPublisher("target_pose", BasePose, queue_size=1),
        "grip_goal_pose": RosPublisher("grip_goal_pose", Pose, queue_size=1),
        "arm_pose": RosPublisher("arm_pose", ArmPose, queue_size=1),
        "dropbox_pose": RosPublisher("dropbox_pose", BasePose, queue_size=1),
        "trajectory_status": RosPublisher("trajectory_status", TrajectoryStatus, queue_size=10),
        "release_pose": RosPublisher("release_pose", Pose, queue_size=1),
        "range_sensor": RosPublisher("range_sensor", Empty, queue_size=1),

        #publishers
        "command": RosSubscriber("command", Command, tcp_server),
        "arm_trajectories": RosSubscriber("arm_trajectories", Trajectories, tcp_server),

        #services
        "trajectory_planner": RosService("trajectory_planner", TrajectoryPlanner),
        "forward_kinematics": RosService("forward_kinematics", ForwardKinematics),
        "inverse_kinematics": RosService("inverse_kinematics", InverseKinematics),
        "start_system": RosService("start_system", StartSystem)
    })

    rospy.spin()


if __name__ == "__main__":
    main()
