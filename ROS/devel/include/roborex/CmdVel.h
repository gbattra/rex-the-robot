// Generated by gencpp from file roborex/CmdVel.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_CMDVEL_H
#define ROBOREX_MESSAGE_CMDVEL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roborex
{
template <class ContainerAllocator>
struct CmdVel_
{
  typedef CmdVel_<ContainerAllocator> Type;

  CmdVel_()
    : linear(0.0)
    , angular(0.0)  {
    }
  CmdVel_(const ContainerAllocator& _alloc)
    : linear(0.0)
    , angular(0.0)  {
  (void)_alloc;
    }



   typedef float _linear_type;
  _linear_type linear;

   typedef float _angular_type;
  _angular_type angular;





  typedef boost::shared_ptr< ::roborex::CmdVel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborex::CmdVel_<ContainerAllocator> const> ConstPtr;

}; // struct CmdVel_

typedef ::roborex::CmdVel_<std::allocator<void> > CmdVel;

typedef boost::shared_ptr< ::roborex::CmdVel > CmdVelPtr;
typedef boost::shared_ptr< ::roborex::CmdVel const> CmdVelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborex::CmdVel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborex::CmdVel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborex::CmdVel_<ContainerAllocator1> & lhs, const ::roborex::CmdVel_<ContainerAllocator2> & rhs)
{
  return lhs.linear == rhs.linear &&
    lhs.angular == rhs.angular;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborex::CmdVel_<ContainerAllocator1> & lhs, const ::roborex::CmdVel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborex

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborex::CmdVel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborex::CmdVel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::CmdVel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::CmdVel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::CmdVel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::CmdVel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborex::CmdVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d5c2dcd348ac8f76ce2a4307bd63a13";
  }

  static const char* value(const ::roborex::CmdVel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d5c2dcd348ac8f7ULL;
  static const uint64_t static_value2 = 0x6ce2a4307bd63a13ULL;
};

template<class ContainerAllocator>
struct DataType< ::roborex::CmdVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborex/CmdVel";
  }

  static const char* value(const ::roborex::CmdVel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborex::CmdVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 linear\n"
"float32 angular\n"
;
  }

  static const char* value(const ::roborex::CmdVel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborex::CmdVel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CmdVel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborex::CmdVel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborex::CmdVel_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    Printer<float>::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    Printer<float>::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOREX_MESSAGE_CMDVEL_H
