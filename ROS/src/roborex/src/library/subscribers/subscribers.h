// Greg Attra
// 03/25/2021

#ifndef ROBOREX_SUBSCRIBERS
#define ROBOREX_SUBSCRIBERS

#include <ros/ros.h>
#include "roborex/BasePose.h"
#include "roborex/ArmPose.h"
#include "roborex/TrajectoryStatus.h"
#include "geometry_msgs/Pose.h"
#include "std_msgs/Bool.h"

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
            void callback(const geometry_msgs::Pose::ConstPtr &pose);

        public:
            geometry_msgs::Pose latest_pose;
            GripperGoalPoseSubscriber(ros::NodeHandle *nh);
    };

    class TargetPoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const roborex::BasePose::ConstPtr &pose);

        public:
            roborex::BasePose latest_pose;
            TargetPoseSubscriber(ros::NodeHandle *nh, std::string topic_name);
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

    class TrajectoryStatusSubscriber
    {
        private:
            ros::Subscriber status_subscriber;
            void callback(const roborex::TrajectoryStatus::ConstPtr &status);

        public:
            roborex::TrajectoryStatus latest_status;
            TrajectoryStatusSubscriber(ros::NodeHandle *nh);
    };

    class ReleasePoseSubscriber
    {
        private:
            ros::Subscriber pose_subscriber;
            void callback(const geometry_msgs::Pose::ConstPtr &pose);

        public:
            geometry_msgs::Pose latest_pose;
            ReleasePoseSubscriber(ros::NodeHandle *nh);
    };

    class RangeSensorSubscriber
    {
        private:
            ros::Subscriber sensor_subscriber;
            void callback(const std_msgs::Bool::ConstPtr &req);
            bool detection_made;

        public:
            RangeSensorSubscriber(ros::NodeHandle *nh);
            bool detectionMade();
    };
}

#endif
