// Greg Attra
// 03/29/2021

#include "ros/ros.h"
#include "roborex/TrajectoryPlanner.h"

namespace roborex
{
    class TrajectoryPlannerClient
    {
        public:
            ros::ServiceClient client;
            TrajectoryPlannerClient(ros::NodeHandle *nh);

    };
}
