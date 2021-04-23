// Greg Attra
// 03/25/2021

#ifndef ROBOREX_BEHAVIORS
#define ROBOREX_BEHAVIORS

#include "subscribers.h"
#include "publishers.h"
#include "pid.h"
#include "clients.h"
#include "roborex/StartSystem.h"
#include <ros/ros.h>

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
            roborex::CommandPublisher *cmd_publisher;
            roborex::PID pid;
            float threshold;

        public:
            bool goal_reached;
            GoToGoalBehavior(
                ros::NodeHandle *nh,
                roborex::TargetPoseSubscriber *tps,
                roborex::BasePoseSubscriber *bps,
                roborex::CommandPublisher *cmp,
                float thresh);

            void resetPID();
            void execute() override;
    };

    class GraspTargetBehavior: public Behavior
    {
        private:
            int current_trajectory_id;
            bool grasping;
            roborex::GripperGoalPoseSubscriber *grip_goal_pose_subscriber;
            roborex::TrajectoryPlannerClient *trajectory_planner_client;
            roborex::ArmPoseSubscriber *arm_pose_subscriber;
            roborex::TrajectoryPublisher *traj_publisher;
            roborex::TrajectoryStatusSubscriber *traj_status_subscriber;

        public:
            bool target_grasped;

            GraspTargetBehavior(
                ros::NodeHandle *nh,
                roborex::GripperGoalPoseSubscriber *ggps,
                roborex::ArmPoseSubscriber *aps,
                roborex::TrajectoryPlannerClient *tpc,
                roborex::TrajectoryPublisher *tp,
                roborex::TrajectoryStatusSubscriber *tss);

            void execute() override;
    };

    class ReleaseTargetBehavior: public Behavior
    {
        private:
            int current_trajectory_id;
            bool releasing;
            roborex::ReleasePoseSubscriber *release_pose_subscriber;
            roborex::TrajectoryPlannerClient *trajectory_planner_client;
            roborex::ArmPoseSubscriber *arm_pose_subscriber;
            roborex::TrajectoryPublisher *traj_publisher;
            roborex::TrajectoryStatusSubscriber *traj_status_subscriber;

        public:
            bool target_released;
            ReleaseTargetBehavior(
                ros::NodeHandle *nh,
                roborex::ReleasePoseSubscriber *rps,
                roborex::ArmPoseSubscriber *aps,
                roborex::TrajectoryPlannerClient *tpc,
                roborex::TrajectoryPublisher *tp,
                roborex::TrajectoryStatusSubscriber *tss);

            void execute() override;

    };

    class SystemBehavior: public Behavior
    {
        private:
            bool started = false;
            bool approached = false;
            bool grasped = false;
            bool returned = false;
            bool dropped = false;

            roborex::GoToGoalBehavior *gtg_behavior;
            roborex::GraspTargetBehavior *grasp_behavior;
            roborex::GoToGoalBehavior *gtg_dropbox_behavior;
            roborex::ReleaseTargetBehavior *release_behavior;

        public:
            SystemBehavior(
                ros::NodeHandle *nh,
                roborex::GoToGoalBehavior *gtgb,
                roborex::GraspTargetBehavior *gtb,
                roborex::GoToGoalBehavior *gtgdb,
                roborex::ReleaseTargetBehavior *rtb);

            bool start(roborex::StartSystemRequest &req, roborex::StartSystemResponse &res);
            void execute() override;
    };
}

#endif
