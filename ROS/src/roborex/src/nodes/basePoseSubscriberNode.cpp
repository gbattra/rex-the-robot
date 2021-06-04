// Greg Attra
// 03/25/2021

#include "subscribers/subscribers.h"

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_base_pose_subscriber\n");
    ros::init(argc, argv, "base_pose_subscriber");
    ros::NodeHandle nh;
    roborex::BasePoseSubscriber subscriber = roborex::BasePoseSubscriber(&nh);
    ROS_INFO("Listening to /base_pose topic\n");
    ros::spin();
}
