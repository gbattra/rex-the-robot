// Greg Attra
// 06/04/2021

#include "behaviors.h"
#include "geometry_msgs/Pose.h"

roborex::ExploreBehavior::ExploreBehavior(
    ros::NodeHandle *nh,
    roborex::RangeSensorSubscriber *rss,
    roborex::BasePoseSubscriber *bps,
    roborex::CommandPublisher *cp)
{
    range_sensor_subscriber = rss;
    base_pose_subscriber = bps;
    cmd_publisher = cp;
    pid = roborex::PID(0.7, 0.001, 0.01, 0.1);
}

void roborex::ExploreBehavior::execute()
{
    if (!avoiding && range_sensor_subscriber->detectionMade())
    {
        float target_angle = (rand() / RAND_MAX) * (3.14 / 2) + (3.14 / 4);
        target_pose = roborex::BasePose();
        target_pose.angle = target_angle;
        avoiding = true;
    }

    roborex::BasePose base_pose = base_pose_subscriber->latest_pose;
    roborex::Command cmd;
    if (avoiding)
    {
        cmd.linear = 5;
        float e = target_pose.angle - base_pose.angle;
        float e_norm = atan2(sin(e), cos(e));
        float w = pid.regulate(e_norm);

        if (w <= threshold)
        {
            avoiding = false;
        }
    }
    else
    {
        cmd.linear = 10;
        cmd.angular = 0;
    }

    cmd_publisher->publish(cmd);
}
