// Greg Attra
// 04/09/2021

#include "publishers.h"
#include <ros/ros.h>


roborex::TrajectoryPublisher::TrajectoryPublisher(ros::NodeHandle *nh)
{
    trajectory_publisher = nh->advertise<roborex::Trajectories>("/arm_trajectories", 10);
}

void roborex::TrajectoryPublisher::publish(roborex::Trajectories msg)
{
    trajectory_publisher.publish(msg);
}
