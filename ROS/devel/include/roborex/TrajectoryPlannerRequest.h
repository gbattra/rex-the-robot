// Generated by gencpp from file roborex/TrajectoryPlannerRequest.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_TRAJECTORYPLANNERREQUEST_H
#define ROBOREX_MESSAGE_TRAJECTORYPLANNERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <roborex/ArmPose.h>
#include <geometry_msgs/Pose.h>

namespace roborex
{
template <class ContainerAllocator>
struct TrajectoryPlannerRequest_
{
  typedef TrajectoryPlannerRequest_<ContainerAllocator> Type;

  TrajectoryPlannerRequest_()
    : arm_pose()
    , target()
    , grasp_trajectory(false)
    , release_trajectory(false)  {
    }
  TrajectoryPlannerRequest_(const ContainerAllocator& _alloc)
    : arm_pose(_alloc)
    , target(_alloc)
    , grasp_trajectory(false)
    , release_trajectory(false)  {
  (void)_alloc;
    }



   typedef  ::roborex::ArmPose_<ContainerAllocator>  _arm_pose_type;
  _arm_pose_type arm_pose;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _target_type;
  _target_type target;

   typedef uint8_t _grasp_trajectory_type;
  _grasp_trajectory_type grasp_trajectory;

   typedef uint8_t _release_trajectory_type;
  _release_trajectory_type release_trajectory;





  typedef boost::shared_ptr< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryPlannerRequest_

typedef ::roborex::TrajectoryPlannerRequest_<std::allocator<void> > TrajectoryPlannerRequest;

typedef boost::shared_ptr< ::roborex::TrajectoryPlannerRequest > TrajectoryPlannerRequestPtr;
typedef boost::shared_ptr< ::roborex::TrajectoryPlannerRequest const> TrajectoryPlannerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator1> & lhs, const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.arm_pose == rhs.arm_pose &&
    lhs.target == rhs.target &&
    lhs.grasp_trajectory == rhs.grasp_trajectory &&
    lhs.release_trajectory == rhs.release_trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator1> & lhs, const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborex

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2bac259c1bc1ea5c349be865d7f376a1";
  }

  static const char* value(const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2bac259c1bc1ea5cULL;
  static const uint64_t static_value2 = 0x349be865d7f376a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborex/TrajectoryPlannerRequest";
  }

  static const char* value(const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ArmPose arm_pose\n"
"geometry_msgs/Pose target\n"
"bool grasp_trajectory\n"
"bool release_trajectory\n"
"\n"
"================================================================================\n"
"MSG: roborex/ArmPose\n"
"JointState world_joint\n"
"JointState base_joint\n"
"JointState shoulder_joint\n"
"JointState elbow_joint\n"
"JointState wrist_joint\n"
"JointState eff_joint\n"
"JointState gripper_offset_joint\n"
"JointState right_gripper_joint\n"
"JointState left_gripper_joint\n"
"================================================================================\n"
"MSG: roborex/JointState\n"
"geometry_msgs/Point translation\n"
"float32 angle\n"
"float32 upper_bound\n"
"float32 lower_bound\n"
"int32 axis\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arm_pose);
      stream.next(m.target);
      stream.next(m.grasp_trajectory);
      stream.next(m.release_trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryPlannerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborex::TrajectoryPlannerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborex::TrajectoryPlannerRequest_<ContainerAllocator>& v)
  {
    s << indent << "arm_pose: ";
    s << std::endl;
    Printer< ::roborex::ArmPose_<ContainerAllocator> >::stream(s, indent + "  ", v.arm_pose);
    s << indent << "target: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "grasp_trajectory: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.grasp_trajectory);
    s << indent << "release_trajectory: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.release_trajectory);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOREX_MESSAGE_TRAJECTORYPLANNERREQUEST_H
