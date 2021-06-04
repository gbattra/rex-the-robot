// Greg Attra
// 04/09/2021

#include "behaviors.h"
#include <ros/ros.h>
#include "roborex/StartSystem.h"


roborex::SystemBehavior::SystemBehavior(
    ros::NodeHandle *nh,
    roborex::GoToGoalBehavior *gtgb,
    roborex::GraspTargetBehavior *gtb,
    roborex::GoToGoalBehavior *gtgdb,
    roborex::ReleaseTargetBehavior *rtb)
{
    started = false;
    gtg_behavior = gtgb;
    grasp_behavior = gtb;
    gtg_dropbox_behavior = gtgdb;
    release_behavior = rtb;
}

void roborex::SystemBehavior::execute()
{
    if (!started)
    {
        return;
    }
    else if (!gtg_behavior->goal_reached)
    {
        gtg_behavior->execute();
        return;
    }
    else if (gtg_behavior->goal_reached && !approached)
    {
        approached = true;
        ros::Duration(1.0).sleep();
        return;
    }
    else if (approached && !grasp_behavior->target_grasped)
    {
        grasp_behavior->execute();
        return;
    }
    else if (grasp_behavior->target_grasped && !grasped)
    {
        grasped = true;
        gtg_dropbox_behavior->resetPID();
        ros::Duration(0.5).sleep();
        return;
    }
    else if (grasped && !gtg_dropbox_behavior->goal_reached)
    {
        gtg_dropbox_behavior->execute();
        return;
    }
    else if (gtg_dropbox_behavior->goal_reached && !returned)
    {
        returned = true;
        ros::Duration(0.5).sleep();
        return;
    }
    else if (returned && !release_behavior->target_released)
    {
        release_behavior->execute();
    }
}

bool roborex::SystemBehavior::start(roborex::StartSystemRequest &req, roborex::StartSystemResponse &res)
{
    started = true;
    gtg_behavior->resetPID();
    return true;
}
