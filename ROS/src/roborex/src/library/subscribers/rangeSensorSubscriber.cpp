// Greg Attra
// 06/04/2021

#include "subscribers.h"

roborex::RangeSensorSubscriber::RangeSensorSubscriber(ros::NodeHandle *nh)
{
    pose_subscriber = nh->subscribe("/range_sensor", 1, &roborex::RangeSensorSubscriber::callback, this);
}

void roborex::RangeSensorSubscriber::callback(const geometry_msgs::Empty::ConstPtr &req)
{
    detection_made = true;
}

void roborex::RangeSensorSubscriber::detectionMade()
{
    bool detection = detection_made;
    detection_made = false;
    return detection;
}