// Greg Attra
// 06/04/2021

#include "behaviors.h"
#include "geometry_msgs/Pose.h"

roborex::ExploreBehavior::ExploreBehavior(
    ros::NodeHandle *nh,
    roborex::RangeSensorSubscriber *rss,
    roborex::CommandPublisher *cp)
{
    range_sensor_subscriber = rss;
    cmd_publisher = cp;
    pid = roborex::PID(0.7, 0.001, 0.01, 0.1);
}

void roborex::ExploreBehavior::execute()
{
    if (!avoiding && range_sensor_subscriber->detectionMade())
    {
        timeToTurn = ros::Duration(5.0);
        turnStartTime = ros::Time::now();
        avoiding = true;
        pid.reset();
    }

    roborex::Command cmd;
    if (avoiding)
    {
        ros::Time currentTime = ros::Time::now();
        ros::Duration timeLeft = (turnStartTime + timeToTurn) - currentTime;

        if (timeLeft.toSec() <= 0)
        {
            avoiding = false;
            return;
        }

        cmd.linear = 5;
        float e = 1 - (currentTime - turnStartTime).toSec() / timeToTurn.toSec();
        std::cout << e << std::endl;
        float w = pid.regulate(e);
        cmd.angular = w;
    }
    else
    {
        cmd.linear = 10;
        cmd.angular = 0;
    }

    cmd_publisher->publish(cmd);
}
