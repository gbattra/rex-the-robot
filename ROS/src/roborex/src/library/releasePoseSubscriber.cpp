// Greg Attra
// 04/09/2021

#include "subscribers.h"

roborex::ReleasePoseSubscriber::ReleasePoseSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/release_pose", 1, &roborex::ReleasePoseSubscriber::callback, this);
}

void roborex::ReleasePoseSubscriber::callback(const geometry_msgs::Pose::ConstPtr &pose)
{
    latest_pose = *pose;
}
