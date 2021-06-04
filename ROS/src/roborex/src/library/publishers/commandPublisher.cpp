// Greg Attra
// 03/25/2021

#include "publishers.h"
#include "roborex/Command.h"

roborex::CommandPublisher::CommandPublisher(ros::NodeHandle *nh)
{
    cmd_vel_publisher = nh->advertise<roborex::Command>("/command", 10);
}

void roborex::CommandPublisher::publish(roborex::Command msg)
{
    cmd_vel_publisher.publish(msg);
}