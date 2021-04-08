// Generated by gencpp from file roborex/Trajectory.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_TRAJECTORY_H
#define ROBOREX_MESSAGE_TRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <roborex/ArmPose.h>

namespace roborex
{
template <class ContainerAllocator>
struct Trajectory_
{
  typedef Trajectory_<ContainerAllocator> Type;

  Trajectory_()
    : poses()  {
    }
  Trajectory_(const ContainerAllocator& _alloc)
    : poses(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::roborex::ArmPose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::roborex::ArmPose_<ContainerAllocator> >::other >  _poses_type;
  _poses_type poses;





  typedef boost::shared_ptr< ::roborex::Trajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborex::Trajectory_<ContainerAllocator> const> ConstPtr;

}; // struct Trajectory_

typedef ::roborex::Trajectory_<std::allocator<void> > Trajectory;

typedef boost::shared_ptr< ::roborex::Trajectory > TrajectoryPtr;
typedef boost::shared_ptr< ::roborex::Trajectory const> TrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborex::Trajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborex::Trajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborex::Trajectory_<ContainerAllocator1> & lhs, const ::roborex::Trajectory_<ContainerAllocator2> & rhs)
{
  return lhs.poses == rhs.poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborex::Trajectory_<ContainerAllocator1> & lhs, const ::roborex::Trajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborex

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborex::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborex::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborex::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02bb950f0189c1fcde68ce66b9c7942a";
  }

  static const char* value(const ::roborex::Trajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02bb950f0189c1fcULL;
  static const uint64_t static_value2 = 0xde68ce66b9c7942aULL;
};

template<class ContainerAllocator>
struct DataType< ::roborex::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborex/Trajectory";
  }

  static const char* value(const ::roborex::Trajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborex::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ArmPose[] poses\n"
"================================================================================\n"
"MSG: roborex/ArmPose\n"
"JointState world_joint\n"
"JointState base_joint\n"
"JointState shoulder_joint\n"
"JointState elbow_joint\n"
"JointState wrist_joint\n"
"JointState eff_joint\n"
"bool right_gripper_joint\n"
"bool left_gripper_joint\n"
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
;
  }

  static const char* value(const ::roborex::Trajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborex::Trajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborex::Trajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborex::Trajectory_<ContainerAllocator>& v)
  {
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::roborex::ArmPose_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOREX_MESSAGE_TRAJECTORY_H