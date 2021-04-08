// Greg Attra
// 03/26/2021

#include "behaviors.h"
#include "publishers.h"

roborex::GoToGoalBehavior::GoToGoalBehavior(
    ros::NodeHandle *nh,
    roborex::TargetPoseSubscriber *tps,
    roborex::BasePoseSubscriber *bps,
    roborex::CmdVelPublisher *cvp,
    float thresh)
{
    target_pose_subscriber = tps;
    base_pose_subscriber = bps;
    cmd_vel_publisher = cvp;
    pid = roborex::PID(0.7, 0.001, 0.01, 0.1);
    threshold = thresh;
}

void roborex::GoToGoalBehavior::execute()
{
    roborex::CmdVel cmd_vel;
    cmd_vel.linear = 0;
    cmd_vel.angular = 0;

    roborex::BasePose base_pose = base_pose_subscriber->latest_pose;
    roborex::BasePose target_pose = target_pose_subscriber->latest_pose;

    float xd = target_pose.x - base_pose.x;
    float zd = target_pose.z - base_pose.z;
    
    float d = sqrt((xd * xd) + (zd * zd));
    if (d < threshold)
    {
        pid.reset();
        cmd_vel_publisher->publish(cmd_vel);
        return;
    }

    float v = d;

    float e = target_pose.angle - base_pose.angle;
    float e_norm = atan2(sin(e), cos(e));
    float w = pid.regulate(e_norm);

    cmd_vel.linear = v;
    cmd_vel.angular = w;

    cmd_vel_publisher->publish(cmd_vel);
}
