// Greg Attra
// 03/25/2021

#include "behaviors.h"
#include "subscribers.h"
#include "publishers.h"

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_gtg_behavior\n");
    ros::init(argc, argv, "roborex_gtg_behavior");
    ros::NodeHandle nh;
    roborex::BasePoseSubscriber base_pose_subscriber = roborex::BasePoseSubscriber(&nh);
    roborex::TargetPoseSubscriber target_pose_subscriber = roborex::TargetPoseSubscriber(&nh);
    roborex::CmdVelPublisher cmd_vel_publisher = roborex::CmdVelPublisher(&nh);
    roborex::GoToGoalBehavior gtg_behavior = roborex::GoToGoalBehavior(
                                                            &nh,
                                                            &target_pose_subscriber,
                                                            &base_pose_subscriber,
                                                            &cmd_vel_publisher,
                                                            1.2);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        gtg_behavior.execute();
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
