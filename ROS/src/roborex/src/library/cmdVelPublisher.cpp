// Greg Attra
// 03/25/2021

#include "publishers.h"
#include "roborex/CmdVel.h"

roborex::CmdVelPublisher::CmdVelPublisher(ros::NodeHandle *nh)
{
    cmd_vel_publisher = nh->advertise<roborex::CmdVel>("/cmd_vel", 10);
}

void roborex::CmdVelPublisher::publish(roborex::CmdVel msg)
{
    cmd_vel_publisher.publish(msg);
}