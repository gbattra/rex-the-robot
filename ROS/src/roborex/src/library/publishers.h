// Greg Attra
// 03/25/2021

#ifndef ROBOREX_PUBLISHERS
#define ROBOREX_PUBLISHERS

#include <ros/ros.h>
#include <roborex/CmdVel.h>

namespace roborex
{
    template <class T>
    class Publisher
    {
        public:
            virtual void publish(T msg) { throw; }
    };

    class CmdVelPublisher: roborex::Publisher<roborex::CmdVel>
    {
        private:
            ros::Publisher cmd_vel_publisher;
        
        public:
            CmdVelPublisher(ros::NodeHandle *nh);
            void publish(roborex::CmdVel msg) override;
    };
}

#endif