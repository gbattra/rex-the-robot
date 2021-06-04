// Greg Attra
// 03/29/2021

#include <ros/ros.h>
#include "clients.h"
#include "roborex/TrajectoryPlanner.h"

roborex::TrajectoryPlannerClient::TrajectoryPlannerClient(ros::NodeHandle *nh)
{
    client = nh->serviceClient<roborex::TrajectoryPlanner>("trajectory_planner");
}
