// Generated by gencpp from file roborex/StartSystemRequest.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_STARTSYSTEMREQUEST_H
#define ROBOREX_MESSAGE_STARTSYSTEMREQUEST_H


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
struct StartSystemRequest_
{
  typedef StartSystemRequest_<ContainerAllocator> Type;

  StartSystemRequest_()
    : start(false)  {
    }
  StartSystemRequest_(const ContainerAllocator& _alloc)
    : start(false)  {
  (void)_alloc;
    }



   typedef uint8_t _start_type;
  _start_type start;





  typedef boost::shared_ptr< ::roborex::StartSystemRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborex::StartSystemRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartSystemRequest_

typedef ::roborex::StartSystemRequest_<std::allocator<void> > StartSystemRequest;

typedef boost::shared_ptr< ::roborex::StartSystemRequest > StartSystemRequestPtr;
typedef boost::shared_ptr< ::roborex::StartSystemRequest const> StartSystemRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborex::StartSystemRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborex::StartSystemRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborex::StartSystemRequest_<ContainerAllocator1> & lhs, const ::roborex::StartSystemRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start == rhs.start;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborex::StartSystemRequest_<ContainerAllocator1> & lhs, const ::roborex::StartSystemRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborex

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roborex::StartSystemRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborex::StartSystemRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::StartSystemRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborex::StartSystemRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::StartSystemRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborex::StartSystemRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborex::StartSystemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "676aa7bfb3ec2071e814f2368dfd5fb5";
  }

  static const char* value(const ::roborex::StartSystemRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x676aa7bfb3ec2071ULL;
  static const uint64_t static_value2 = 0xe814f2368dfd5fb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::roborex::StartSystemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborex/StartSystemRequest";
  }

  static const char* value(const ::roborex::StartSystemRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborex::StartSystemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool start\n"
;
  }

  static const char* value(const ::roborex::StartSystemRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborex::StartSystemRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartSystemRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborex::StartSystemRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborex::StartSystemRequest_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOREX_MESSAGE_STARTSYSTEMREQUEST_H