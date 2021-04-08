// Greg Attra
// 03/25/2021

#include "subscribers.h"

roborex::TargetPoseSubscriber::TargetPoseSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/target_pose", 1, &roborex::TargetPoseSubscriber::callback, this);
}

void roborex::TargetPoseSubscriber::callback(const roborex::BasePose::ConstPtr &pose)
{
    latest_pose = *pose;
}
