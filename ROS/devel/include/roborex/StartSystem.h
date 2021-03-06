// Generated by gencpp from file roborex/StartSystem.msg
// DO NOT EDIT!


#ifndef ROBOREX_MESSAGE_STARTSYSTEM_H
#define ROBOREX_MESSAGE_STARTSYSTEM_H

#include <ros/service_traits.h>


#include <roborex/StartSystemRequest.h>
#include <roborex/StartSystemResponse.h>


namespace roborex
{

struct StartSystem
{

typedef StartSystemRequest Request;
typedef StartSystemResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartSystem
} // namespace roborex


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roborex::StartSystem > {
  static const char* value()
  {
    return "fef68d53bc3842fbc6d3b74baf134cd5";
  }

  static const char* value(const ::roborex::StartSystem&) { return value(); }
};

template<>
struct DataType< ::roborex::StartSystem > {
  static const char* value()
  {
    return "roborex/StartSystem";
  }

  static const char* value(const ::roborex::StartSystem&) { return value(); }
};


// service_traits::MD5Sum< ::roborex::StartSystemRequest> should match
// service_traits::MD5Sum< ::roborex::StartSystem >
template<>
struct MD5Sum< ::roborex::StartSystemRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roborex::StartSystem >::value();
  }
  static const char* value(const ::roborex::StartSystemRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roborex::StartSystemRequest> should match
// service_traits::DataType< ::roborex::StartSystem >
template<>
struct DataType< ::roborex::StartSystemRequest>
{
  static const char* value()
  {
    return DataType< ::roborex::StartSystem >::value();
  }
  static const char* value(const ::roborex::StartSystemRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roborex::StartSystemResponse> should match
// service_traits::MD5Sum< ::roborex::StartSystem >
template<>
struct MD5Sum< ::roborex::StartSystemResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roborex::StartSystem >::value();
  }
  static const char* value(const ::roborex::StartSystemResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roborex::StartSystemResponse> should match
// service_traits::DataType< ::roborex::StartSystem >
template<>
struct DataType< ::roborex::StartSystemResponse>
{
  static const char* value()
  {
    return DataType< ::roborex::StartSystem >::value();
  }
  static const char* value(const ::roborex::StartSystemResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOREX_MESSAGE_STARTSYSTEM_H
