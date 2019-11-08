// Generated by gencpp from file mavros_msgs/WaypointReached.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_WAYPOINTREACHED_H
#define MAVROS_MSGS_MESSAGE_WAYPOINTREACHED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mavros_msgs
{
template <class ContainerAllocator>
struct WaypointReached_
{
  typedef WaypointReached_<ContainerAllocator> Type;

  WaypointReached_()
    : header()
    , wp_seq(0)  {
    }
  WaypointReached_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , wp_seq(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _wp_seq_type;
  _wp_seq_type wp_seq;





  typedef boost::shared_ptr< ::mavros_msgs::WaypointReached_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::WaypointReached_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointReached_

typedef ::mavros_msgs::WaypointReached_<std::allocator<void> > WaypointReached;

typedef boost::shared_ptr< ::mavros_msgs::WaypointReached > WaypointReachedPtr;
typedef boost::shared_ptr< ::mavros_msgs::WaypointReached const> WaypointReachedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::WaypointReached_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::WaypointReached_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geographic_msgs': ['/opt/ros/kinetic/share/geographic_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mavros_msgs': ['/home/kole/rotors_simulator_ws/src/mavros_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::WaypointReached_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::WaypointReached_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::WaypointReached_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1cf64d072d9f6aa0a6715922bdde6a35";
  }

  static const char* value(const ::mavros_msgs::WaypointReached_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1cf64d072d9f6aa0ULL;
  static const uint64_t static_value2 = 0xa6715922bdde6a35ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/WaypointReached";
  }

  static const char* value(const ::mavros_msgs::WaypointReached_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# That message represent MISSION_ITEM_REACHED\n\
#\n\
#   :wp_seq:    index number of reached waypoint\n\
\n\
Header header\n\
\n\
uint16 wp_seq\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::mavros_msgs::WaypointReached_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.wp_seq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointReached_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::WaypointReached_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros_msgs::WaypointReached_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "wp_seq: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.wp_seq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_WAYPOINTREACHED_H
