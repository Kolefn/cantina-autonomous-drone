// Generated by gencpp from file rotors_comm/RecordRosbagRequest.msg
// DO NOT EDIT!


#ifndef ROTORS_COMM_MESSAGE_RECORDROSBAGREQUEST_H
#define ROTORS_COMM_MESSAGE_RECORDROSBAGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rotors_comm
{
template <class ContainerAllocator>
struct RecordRosbagRequest_
{
  typedef RecordRosbagRequest_<ContainerAllocator> Type;

  RecordRosbagRequest_()
    : record(false)  {
    }
  RecordRosbagRequest_(const ContainerAllocator& _alloc)
    : record(false)  {
  (void)_alloc;
    }



   typedef uint8_t _record_type;
  _record_type record;





  typedef boost::shared_ptr< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RecordRosbagRequest_

typedef ::rotors_comm::RecordRosbagRequest_<std::allocator<void> > RecordRosbagRequest;

typedef boost::shared_ptr< ::rotors_comm::RecordRosbagRequest > RecordRosbagRequestPtr;
typedef boost::shared_ptr< ::rotors_comm::RecordRosbagRequest const> RecordRosbagRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rotors_comm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rotors_comm': ['/home/kole/rotors_simulator_ws/src/rotors_comm/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "396b06ea5fee4a93fc2d2be6c15809f7";
  }

  static const char* value(const ::rotors_comm::RecordRosbagRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x396b06ea5fee4a93ULL;
  static const uint64_t static_value2 = 0xfc2d2be6c15809f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rotors_comm/RecordRosbagRequest";
  }

  static const char* value(const ::rotors_comm::RecordRosbagRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
bool record\n\
";
  }

  static const char* value(const ::rotors_comm::RecordRosbagRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.record);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecordRosbagRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rotors_comm::RecordRosbagRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rotors_comm::RecordRosbagRequest_<ContainerAllocator>& v)
  {
    s << indent << "record: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.record);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROTORS_COMM_MESSAGE_RECORDROSBAGREQUEST_H
