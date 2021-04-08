// Generated by gencpp from file roborex/ForwardKinematicsRequest.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_FORWARDKINEMATICSREQUEST_H
#define ROBOREX_MESSAGE_FORWARDKINEMATICSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <roborex/JointState.h>

namespace roborex
{
template <class ContainerAllocator>
struct ForwardKinematicsRequest_
{
  typedef ForwardKinematicsRequest_<ContainerAllocator> Type;

  ForwardKinematicsRequest_()
    : joints()  {
    }
  ForwardKinematicsRequest_(const ContainerAllocator& _alloc)
    : joints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::roborex::JointState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::roborex::JointState_<ContainerAllocator> >::other >  _joints_type;
  _joints_type joints;





  typedef boost::shared_ptr< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ForwardKinematicsRequest_

typedef ::roborex::ForwardKinematicsRequest_<std::allocator<void> > ForwardKinematicsRequest;

typedef boost::shared_ptr< ::roborex::ForwardKinematicsRequest > ForwardKinematicsRequestPtr;
typedef boost::shared_ptr< ::roborex::ForwardKinematicsRequest const> ForwardKinematicsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborex::ForwardKinematicsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborex::ForwardKinematicsRequest_<ContainerAllocator1> & lhs, const ::roborex::ForwardKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.joints == rhs.joints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborex::ForwardKinematicsRequest_<ContainerAllocator1> & lhs, const ::roborex::ForwardKinematicsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborex

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bd8ee6fdb9197be2ea12b6fefb0462c";
  }

  static const char* value(const ::roborex::ForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bd8ee6fdb9197beULL;
  static const uint64_t static_value2 = 0x2ea12b6fefb0462cULL;
};

template<class ContainerAllocator>
struct DataType< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborex/ForwardKinematicsRequest";
  }

  static const char* value(const ::roborex::ForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "JointState[] joints\n"
"\n"
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

  static const char* value(const ::roborex::ForwardKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ForwardKinematicsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborex::ForwardKinematicsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborex::ForwardKinematicsRequest_<ContainerAllocator>& v)
  {
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::roborex::JointState_<ContainerAllocator> >::stream(s, indent + "    ", v.joints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOREX_MESSAGE_FORWARDKINEMATICSREQUEST_H
