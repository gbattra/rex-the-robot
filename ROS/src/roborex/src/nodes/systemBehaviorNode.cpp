// Greg Attra
// 04/09/2021

#include "behaviors.h"
#include "subscribers.h"
#include "publishers.h"

bool start = false;

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_gtg_behavior\n");
    ros::init(argc, argv, "roborex_gtg_behavior");
    ros::NodeHandle nh;
    roborex::BasePoseSubscriber base_pose_subscriber = roborex::BasePoseSubscriber(&nh);
    roborex::TargetPoseSubscriber target_pose_subscriber = roborex::TargetPoseSubscriber(&nh, "target_pose");
    roborex::CommandPublisher cmd_publisher = roborex::CommandPublisher(&nh);
    roborex::GoToGoalBehavior gtg_behavior = roborex::GoToGoalBehavior(
                                                            &nh,
                                                            &target_pose_subscriber,
                                                            &base_pose_subscriber,
                                                            &cmd_publisher,
                                                            1.0);
    
    roborex::GripperGoalPoseSubscriber grip_goal_pose_subscriber = roborex::GripperGoalPoseSubscriber(&nh);
    roborex::TrajectoryPlannerClient trajectory_planner_client = roborex::TrajectoryPlannerClient(&nh);
    roborex::ArmPoseSubscriber arm_pose_subscriber = roborex::ArmPoseSubscriber(&nh);
    roborex::TrajectoryPublisher traj_publisher = roborex::TrajectoryPublisher(&nh);
    roborex::TrajectoryStatusSubscriber traj_status_subscriber = roborex::TrajectoryStatusSubscriber(&nh);
    roborex::GraspTargetBehavior grasp_behavior = roborex::GraspTargetBehavior(
                                                            &nh,
                                                            &grip_goal_pose_subscriber,
                                                            &arm_pose_subscriber,
                                                            &trajectory_planner_client,
                                                            &traj_publisher,
                                                            &traj_status_subscriber);

    roborex::TargetPoseSubscriber dropbox_pose_subscriber = roborex::TargetPoseSubscriber(&nh, "dropbox_pose");
    roborex::GoToGoalBehavior gtg_dropbox_behavior = roborex::GoToGoalBehavior(
                                                            &nh,
                                                            &dropbox_pose_subscriber,
                                                            &base_pose_subscriber,
                                                            &cmd_publisher,
                                                            0.5);


    roborex::ReleasePoseSubscriber release_pose_subscriber = roborex::ReleasePoseSubscriber(&nh);
    roborex::ReleaseTargetBehavior release_behavior = roborex::ReleaseTargetBehavior(
                                                            &nh,
                                                            &release_pose_subscriber,
                                                            &arm_pose_subscriber,
                                                            &trajectory_planner_client,
                                                            &traj_publisher,
                                                            &traj_status_subscriber);

    roborex::SystemBehavior sys_behavior = roborex::SystemBehavior(
                                &nh,
                                &gtg_behavior,
                                &grasp_behavior,
                                &gtg_dropbox_behavior,
                                &release_behavior);

    ros::ServiceServer start_service = nh.advertiseService("start_system", &roborex::SystemBehavior::start, &sys_behavior);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        sys_behavior.execute();
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
