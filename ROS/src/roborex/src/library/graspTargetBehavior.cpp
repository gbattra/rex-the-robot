// Greg Attra
// 03/28/2021

#include "behaviors.h"
#include "roborex/TrajectoryPlanner.h"

roborex::GraspTargetBehavior::GraspTargetBehavior(
    ros::NodeHandle *nh,
    roborex::GripperGoalPoseSubscriber *ggps,
    roborex::ArmPoseSubscriber *aps,
    roborex::TrajectoryPlannerClient *tpc)
{
    grip_goal_pose_subscriber = ggps;
    arm_pose_subscriber = aps;
    trajectory_planner_client = tpc;
}

void roborex::GraspTargetBehavior::execute()
{
    if (grasping) return;
    
    grasping = true;
    roborex::TrajectoryPlannerRequest req;
    req.arm_pose = arm_pose_subscriber->latest_pose;
    roborex::TrajectoryPlanner srv;
    srv.request = req;
    trajectory_planner_client->client.call(srv);
}
