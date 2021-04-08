// Greg Attra
// 03/28/2021

#include "subscribers.h"

roborex::GripperGoalPoseSubscriber::GripperGoalPoseSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/grip_goal_pose", 1, &roborex::GripperGoalPoseSubscriber::callback, this);
}

void roborex::GripperGoalPoseSubscriber::callback(const roborex::BasePose::ConstPtr &pose)
{
    latest_pose = *pose;
}
