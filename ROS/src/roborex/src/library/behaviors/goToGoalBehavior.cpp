// Greg Attra
// 03/26/2021

#include "behaviors.h"
#include "publishers/publishers.h"

roborex::GoToGoalBehavior::GoToGoalBehavior(
    ros::NodeHandle *nh,
    roborex::TargetPoseSubscriber *tps,
    roborex::BasePoseSubscriber *bps,
    roborex::CommandPublisher *cmp,
    float thresh)
{
    target_pose_subscriber = tps;
    base_pose_subscriber = bps;
    cmd_publisher = cmp;
    pid = roborex::PID(0.7, 0.001, 0.01, 0.1);
    threshold = thresh;
    goal_reached = false;
}

void roborex::GoToGoalBehavior::resetPID()
{
    pid.reset();
}

void roborex::GoToGoalBehavior::execute()
{
    roborex::Command cmd;
    cmd.linear = 0;
    cmd.angular = 0;

    roborex::BasePose base_pose = base_pose_subscriber->latest_pose;
    roborex::BasePose target_pose = target_pose_subscriber->latest_pose;

    float xd = target_pose.x - base_pose.x;
    float yd = target_pose.y - base_pose.y;
    float zd = target_pose.z - base_pose.z;
    
    float d = sqrt((xd * xd) + (yd * yd) + (zd * zd));
    if (d < threshold)
    {
        goal_reached = true;
        pid.reset();
        cmd_publisher->publish(cmd);
        return;
    }

    float v = d;

    float e = target_pose.angle - base_pose.angle;
    float e_norm = atan2(sin(e), cos(e));
    float w = pid.regulate(e_norm);

    cmd.linear = v;
    cmd.angular = w;

    cmd_publisher->publish(cmd);
}
