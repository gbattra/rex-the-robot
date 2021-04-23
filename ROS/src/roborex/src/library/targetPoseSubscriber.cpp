// Greg Attra
// 03/25/2021

#include "subscribers.h"

roborex::TargetPoseSubscriber::TargetPoseSubscriber(ros::NodeHandle *nh, std::string topic_name)
{
    pose_subscriber = nh->subscribe(topic_name, 1, &roborex::TargetPoseSubscriber::callback, this);
}

void roborex::TargetPoseSubscriber::callback(const roborex::BasePose::ConstPtr &pose)
{
    latest_pose = *pose;
}