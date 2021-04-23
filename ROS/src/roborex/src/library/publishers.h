// Greg Attra
// 03/25/2021

#ifndef ROBOREX_PUBLISHERS
#define ROBOREX_PUBLISHERS

#include <ros/ros.h>
#include <roborex/Command.h>
#include <roborex/Trajectories.h>

namespace roborex
{
    template <class T>
    class Publisher
    {
        public:
            virtual void publish(T msg) { throw; }
    };

    class CommandPublisher: roborex::Publisher<roborex::Command>
    {
        private:
            ros::Publisher cmd_vel_publisher;
        
        public:
            CommandPublisher(ros::NodeHandle *nh);
            void publish(roborex::Command msg) override;
    };

    class TrajectoryPublisher: roborex::Publisher<roborex::Trajectories>
    {
        private:
            ros::Publisher trajectory_publisher;

        public:
            TrajectoryPublisher(ros::NodeHandle *nh);
            void publish(roborex::Trajectories msg) override;
    };
}

#endif