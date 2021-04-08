// Greg Attra
// 03/25/2021

#include "behaviors.h"
#include "subscribers.h"
#include "publishers.h"

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_grasp_behavior\n");
    ros::init(argc, argv, "roborex_grasp_behavior");
    ros::NodeHandle nh;
    roborex::GripperGoalPoseSubscriber grip_goal_pose_subscriber = roborex::GripperGoalPoseSubscriber(&nh);
    roborex::TrajectoryPlannerClient trajectory_planner_client = roborex::TrajectoryPlannerClient(&nh);
    roborex::ArmPoseSubscriber arm_pose_subscriber = roborex::ArmPoseSubscriber(&nh);
    roborex::GraspTargetBehavior behavior = roborex::GraspTargetBehavior(
                                                            &nh,
                                                            &grip_goal_pose_subscriber,
                                                            &arm_pose_subscriber,
                                                            &trajectory_planner_client);

    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        behavior.execute();
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
