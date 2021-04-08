// Greg Attra
// 03/25/2021

#ifndef ROBOREX_SUBSCRIBERS
#define ROBOREX_SUBSCRIBERS

#include <ros/ros.h>
#include "roborex/BasePose.h"
#include "roborex/ArmPose.h"

namespace roborex
{
    class BasePoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const roborex::BasePose::ConstPtr &pose);

        public:
            roborex::BasePose latest_pose;
            BasePoseSubscriber(ros::NodeHandle *nh);
    };

    class GripperGoalPoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const roborex::BasePose::ConstPtr &pose);

        public:
            roborex::BasePose latest_pose;
            GripperGoalPoseSubscriber(ros::NodeHandle *nh);
    };

    class TargetPoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const roborex::BasePose::ConstPtr &pose);

        public:
            roborex::BasePose latest_pose;
            TargetPoseSubscriber(ros::NodeHandle *nh);
    };

    class ArmPoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const roborex::ArmPose::ConstPtr &pose);

        public:
            roborex::ArmPose latest_pose;
            ArmPoseSubscriber(ros::NodeHandle *nh);
    };
}

#endif
