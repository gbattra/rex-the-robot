// Greg Attra
// 04/09/2021

#include "subscribers.h"
#include "roborex/BasePose.h"

roborex::TrajectoryStatusSubscriber::TrajectoryStatusSubscriber(ros::NodeHandle *nh)
{
    status_subscriber = nh->subscribe("/trajectory_status", 1, &roborex::TrajectoryStatusSubscriber::callback, this);
}

void roborex::TrajectoryStatusSubscriber::callback(const roborex::TrajectoryStatus::ConstPtr &status)
{
    latest_status = *status;
}
