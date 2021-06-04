// Greg Attra
// 04/09/2021

#include "behaviors.h"
#include "roborex/TrajectoryPlanner.h"
#include "geometry_msgs/Pose.h"

roborex::ReleaseTargetBehavior::ReleaseTargetBehavior(
    ros::NodeHandle *nh,
    roborex::ReleasePoseSubscriber *rps,
    roborex::ArmPoseSubscriber *aps,
    roborex::TrajectoryPlannerClient *tpc,
    roborex::TrajectoryPublisher *tp,
    roborex::TrajectoryStatusSubscriber *tss)
{
    release_pose_subscriber = rps;
    arm_pose_subscriber = aps;
    trajectory_planner_client = tpc;
    traj_publisher = tp;
    traj_status_subscriber = tss;
    releasing = false;
    current_trajectory_id == -1;
}

void roborex::ReleaseTargetBehavior::execute()
{
    if (traj_status_subscriber->latest_status.id == current_trajectory_id && current_trajectory_id != 0)
    {
        target_released = true;
    }

    if (releasing) return;

    releasing = true;
    roborex::TrajectoryPlannerRequest req;
    req.arm_pose = arm_pose_subscriber->latest_pose;
    req.target = release_pose_subscriber->latest_pose;
    req.release_trajectory = true;

    roborex::TrajectoryPlanner srv;
    srv.request = req;
    trajectory_planner_client->client.call(srv);

    roborex::Trajectories trajs;
    trajs.trajectories = srv.response.trajectories;
    current_trajectory_id = trajs.trajectories.back().id;
    traj_publisher->publish(trajs);
}
