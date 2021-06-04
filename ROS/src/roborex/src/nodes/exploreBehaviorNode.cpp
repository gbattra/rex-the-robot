// Greg Attra
// 06/04/2021

#include "behaviors/behaviors.h"
#include "subscribers/subscribers.h"
#include "publishers/publishers.h"

int main(int argc, char **argv)
{
    ROS_INFO("Starting roborex_explore_behavior\n");
    ros::init(argc, argv, "roborex_explore_behavior");
    ros::NodeHandle nh;
    roborex::BasePoseSubscriber base_pose_subscriber = roborex::BasePoseSubscriber(&nh);
    roborex::RangeSensorSubscriber range_sensor_subscriber = roborex::RangeSensorSubscriber(&nh);
    roborex::CommandPublisher cmd_publisher = roborex::CommandPublisher(&nh);
    roborex::ExploreBehavior explore_behavior = roborex::ExploreBehavior(
                                                            &nh,
                                                            &range_sensor_subscriber,
                                                            &base_pose_subscriber,
                                                            &cmd_publisher);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        explore_behavior.execute();
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
