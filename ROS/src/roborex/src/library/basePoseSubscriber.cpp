// Greg Attra
// 03/25/2021

#include "subscribers.h"
#include "roborex/BasePose.h"

roborex::BasePoseSubscriber::BasePoseSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/base_pose", 1, &roborex::BasePoseSubscriber::callback, this);
}

void roborex::BasePoseSubscriber::callback(const roborex::BasePose::ConstPtr &pose)
{
    latest_pose = *pose;
}
