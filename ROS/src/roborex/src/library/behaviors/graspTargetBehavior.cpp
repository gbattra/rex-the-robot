// Greg Attra
// 03/28/2021

#include "behaviors.h"
#include "roborex/TrajectoryPlanner.h"
#include "geometry_msgs/Pose.h"

roborex::GraspTargetBehavior::GraspTargetBehavior(
    ros::NodeHandle *nh,
    roborex::GripperGoalPoseSubscriber *ggps,
    roborex::ArmPoseSubscriber *aps,
    roborex::TrajectoryPlannerClient *tpc,
    roborex::TrajectoryPublisher *tp,
    roborex::TrajectoryStatusSubscriber *tss)
{
    grip_goal_pose_subscriber = ggps;
    arm_pose_subscriber = aps;
    trajectory_planner_client = tpc;
    traj_publisher = tp;
    traj_status_subscriber = tss;
    grasping = false;
    current_trajectory_id == -1;
}

void roborex::GraspTargetBehavior::execute()
{
    if (traj_status_subscriber->latest_status.id == current_trajectory_id && current_trajectory_id != 0)
    {
        target_grasped = true;
    }

    if (grasping) return;

    grasping = true;
    roborex::TrajectoryPlannerRequest req;
    req.arm_pose = arm_pose_subscriber->latest_pose;
    req.target = grip_goal_pose_subscriber->latest_pose;
    req.grasp_trajectory = true;

    roborex::TrajectoryPlanner srv;
    srv.request = req;
    trajectory_planner_client->client.call(srv);

    roborex::Trajectories trajs;
    trajs.trajectories = srv.response.trajectories;
    current_trajectory_id = trajs.trajectories.back().id;
    traj_publisher->publish(trajs);
}
