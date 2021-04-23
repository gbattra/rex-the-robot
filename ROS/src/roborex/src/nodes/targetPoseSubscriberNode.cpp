// Greg Attra
// 03/25/2021

#include "subscribers.h"

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_target_pose_subscriber\n");
    ros::init(argc, argv, "target_pose_subscriber");
    ros::NodeHandle nh;
    roborex::TargetPoseSubscriber subscriber = roborex::TargetPoseSubscriber(&nh, "target_pose");
    ROS_INFO("Listening to /target_pose topic\n");
    ros::spin();
}
