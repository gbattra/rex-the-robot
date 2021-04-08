#ifndef ROBOREX_BEHAVIORS
#define ROBOREX_BEHAVIORS

#include <ros/ros.h>
// Greg Attra
// 03/25/2021

#include "subscribers.h"
#include "publishers.h"
#include "pid.h"
#include "clients.h"

namespace roborex
{
    class Behavior
    {
        public:
            virtual void execute() { throw; }
    };

    class GoToGoalBehavior: public Behavior
    {
        private:
            roborex::TargetPoseSubscriber *target_pose_subscriber;
            roborex::BasePoseSubscriber *base_pose_subscriber;
            roborex::CmdVelPublisher *cmd_vel_publisher;
            roborex::PID pid;
            float threshold;

        public:
            GoToGoalBehavior(
                ros::NodeHandle *nh,
                roborex::TargetPoseSubscriber *tps,
                roborex::BasePoseSubscriber *bps,
                roborex::CmdVelPublisher *cvp,
                float thresh);

            void execute() override;
    };

    class GraspTargetBehavior: public Behavior
    {
        private:
            bool grasping;
            roborex::GripperGoalPoseSubscriber *grip_goal_pose_subscriber;
            roborex::TrajectoryPlannerClient *trajectory_planner_client;
            roborex::ArmPoseSubscriber *arm_pose_subscriber;

        public:
            GraspTargetBehavior(
                ros::NodeHandle *nh,
                roborex::GripperGoalPoseSubscriber *ggps,
                roborex::ArmPoseSubscriber *aps,
                roborex::TrajectoryPlannerClient *tpc);
            void execute() override;
    };
}

#endif
