// Generated by gencpp from file lab_3/WordCount.msg
// DO NOT EDIT!


#ifndef LAB_3_MESSAGE_WORDCOUNT_H
#define LAB_3_MESSAGE_WORDCOUNT_H

#include <ros/service_traits.h>


#include <lab_3/WordCountRequest.h>
#include <lab_3/WordCountResponse.h>


namespace lab_3
{

struct WordCount
{

typedef WordCountRequest Request;
typedef WordCountResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WordCount
} // namespace lab_3


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lab_3::WordCount > {
  static const char* value()
  {
    return "58903d21a3264f3408d79ba79e9f7c7e";
  }

  static const char* value(const ::lab_3::WordCount&) { return value(); }
};

template<>
struct DataType< ::lab_3::WordCount > {
  static const char* value()
  {
    return "lab_3/WordCount";
  }

  static const char* value(const ::lab_3::WordCount&) { return value(); }
};


// service_traits::MD5Sum< ::lab_3::WordCountRequest> should match 
// service_traits::MD5Sum< ::lab_3::WordCount > 
template<>
struct MD5Sum< ::lab_3::WordCountRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lab_3::WordCount >::value();
  }
  static const char* value(const ::lab_3::WordCountRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_3::WordCountRequest> should match 
// service_traits::DataType< ::lab_3::WordCount > 
template<>
struct DataType< ::lab_3::WordCountRequest>
{
  static const char* value()
  {
    return DataType< ::lab_3::WordCount >::value();
  }
  static const char* value(const ::lab_3::WordCountRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lab_3::WordCountResponse> should match 
// service_traits::MD5Sum< ::lab_3::WordCount > 
template<>
struct MD5Sum< ::lab_3::WordCountResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lab_3::WordCount >::value();
  }
  static const char* value(const ::lab_3::WordCountResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lab_3::WordCountResponse> should match 
// service_traits::DataType< ::lab_3::WordCount > 
template<>
struct DataType< ::lab_3::WordCountResponse>
{
  static const char* value()
  {
    return DataType< ::lab_3::WordCount >::value();
  }
  static const char* value(const ::lab_3::WordCountResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LAB_3_MESSAGE_WORDCOUNT_H
