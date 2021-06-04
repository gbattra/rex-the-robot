// Greg Attra
// 03/25/2021

#include "subscribers.h"
#include "roborex/ArmPose.h"

roborex::ArmPoseSubscriber::ArmPoseSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/arm_pose", 1, &roborex::ArmPoseSubscriber::callback, this);
}

void roborex::ArmPoseSubscriber::callback(const roborex::ArmPose::ConstPtr &pose)
{
    latest_pose = *pose;
}
