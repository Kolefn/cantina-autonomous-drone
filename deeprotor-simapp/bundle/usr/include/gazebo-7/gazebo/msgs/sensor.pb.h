// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sensor.proto

#ifndef PROTOBUF_sensor_2eproto__INCLUDED
#define PROTOBUF_sensor_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
#include "pose.pb.h"
#include "camerasensor.pb.h"
#include "raysensor.pb.h"
#include "contactsensor.pb.h"
#include "logical_camera_sensor.pb.h"
#pragma GCC system_header
#include <boost/shared_ptr.hpp>
#include <gazebo/util/system.hh>
#include "gazebo/msgs/MsgFactory.hh"
// @@protoc_insertion_point(includes)

namespace gazebo {
namespace msgs {

// Internal implementation detail -- do not call these.
void GZ_MSGS_VISIBLE protobuf_AddDesc_sensor_2eproto();
void protobuf_AssignDesc_sensor_2eproto();
void protobuf_ShutdownFile_sensor_2eproto();

class Sensor;

// ===================================================================

class GZ_MSGS_VISIBLE Sensor : public ::google::protobuf::Message {
 public:
  Sensor();
  virtual ~Sensor();

  Sensor(const Sensor& from);

  inline Sensor& operator=(const Sensor& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Sensor& default_instance();

  void Swap(Sensor* other);

  // implements Message ----------------------------------------------

  Sensor* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Sensor& from);
  void MergeFrom(const Sensor& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required string name = 1;
  inline bool has_name() const;
  inline void clear_name();
  static const int kNameFieldNumber = 1;
  inline const ::std::string& name() const;
  inline void set_name(const ::std::string& value);
  inline void set_name(const char* value);
  inline void set_name(const char* value, size_t size);
  inline ::std::string* mutable_name();
  inline ::std::string* release_name();
  inline void set_allocated_name(::std::string* name);

  // optional uint32 id = 2;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 2;
  inline ::google::protobuf::uint32 id() const;
  inline void set_id(::google::protobuf::uint32 value);

  // required string parent = 3;
  inline bool has_parent() const;
  inline void clear_parent();
  static const int kParentFieldNumber = 3;
  inline const ::std::string& parent() const;
  inline void set_parent(const ::std::string& value);
  inline void set_parent(const char* value);
  inline void set_parent(const char* value, size_t size);
  inline ::std::string* mutable_parent();
  inline ::std::string* release_parent();
  inline void set_allocated_parent(::std::string* parent);

  // optional uint32 parent_id = 4;
  inline bool has_parent_id() const;
  inline void clear_parent_id();
  static const int kParentIdFieldNumber = 4;
  inline ::google::protobuf::uint32 parent_id() const;
  inline void set_parent_id(::google::protobuf::uint32 value);

  // required string type = 5;
  inline bool has_type() const;
  inline void clear_type();
  static const int kTypeFieldNumber = 5;
  inline const ::std::string& type() const;
  inline void set_type(const ::std::string& value);
  inline void set_type(const char* value);
  inline void set_type(const char* value, size_t size);
  inline ::std::string* mutable_type();
  inline ::std::string* release_type();
  inline void set_allocated_type(::std::string* type);

  // optional bool always_on = 6;
  inline bool has_always_on() const;
  inline void clear_always_on();
  static const int kAlwaysOnFieldNumber = 6;
  inline bool always_on() const;
  inline void set_always_on(bool value);

  // optional double update_rate = 7;
  inline bool has_update_rate() const;
  inline void clear_update_rate();
  static const int kUpdateRateFieldNumber = 7;
  inline double update_rate() const;
  inline void set_update_rate(double value);

  // optional .gazebo.msgs.Pose pose = 8;
  inline bool has_pose() const;
  inline void clear_pose();
  static const int kPoseFieldNumber = 8;
  inline const ::gazebo::msgs::Pose& pose() const;
  inline ::gazebo::msgs::Pose* mutable_pose();
  inline ::gazebo::msgs::Pose* release_pose();
  inline void set_allocated_pose(::gazebo::msgs::Pose* pose);

  // optional .gazebo.msgs.CameraSensor camera = 9;
  inline bool has_camera() const;
  inline void clear_camera();
  static const int kCameraFieldNumber = 9;
  inline const ::gazebo::msgs::CameraSensor& camera() const;
  inline ::gazebo::msgs::CameraSensor* mutable_camera();
  inline ::gazebo::msgs::CameraSensor* release_camera();
  inline void set_allocated_camera(::gazebo::msgs::CameraSensor* camera);

  // optional .gazebo.msgs.RaySensor ray = 10;
  inline bool has_ray() const;
  inline void clear_ray();
  static const int kRayFieldNumber = 10;
  inline const ::gazebo::msgs::RaySensor& ray() const;
  inline ::gazebo::msgs::RaySensor* mutable_ray();
  inline ::gazebo::msgs::RaySensor* release_ray();
  inline void set_allocated_ray(::gazebo::msgs::RaySensor* ray);

  // optional .gazebo.msgs.ContactSensor contact = 11;
  inline bool has_contact() const;
  inline void clear_contact();
  static const int kContactFieldNumber = 11;
  inline const ::gazebo::msgs::ContactSensor& contact() const;
  inline ::gazebo::msgs::ContactSensor* mutable_contact();
  inline ::gazebo::msgs::ContactSensor* release_contact();
  inline void set_allocated_contact(::gazebo::msgs::ContactSensor* contact);

  // optional bool visualize = 12;
  inline bool has_visualize() const;
  inline void clear_visualize();
  static const int kVisualizeFieldNumber = 12;
  inline bool visualize() const;
  inline void set_visualize(bool value);

  // optional string topic = 13;
  inline bool has_topic() const;
  inline void clear_topic();
  static const int kTopicFieldNumber = 13;
  inline const ::std::string& topic() const;
  inline void set_topic(const ::std::string& value);
  inline void set_topic(const char* value);
  inline void set_topic(const char* value, size_t size);
  inline ::std::string* mutable_topic();
  inline ::std::string* release_topic();
  inline void set_allocated_topic(::std::string* topic);

  // optional .gazebo.msgs.LogicalCameraSensor logical_camera = 14;
  inline bool has_logical_camera() const;
  inline void clear_logical_camera();
  static const int kLogicalCameraFieldNumber = 14;
  inline const ::gazebo::msgs::LogicalCameraSensor& logical_camera() const;
  inline ::gazebo::msgs::LogicalCameraSensor* mutable_logical_camera();
  inline ::gazebo::msgs::LogicalCameraSensor* release_logical_camera();
  inline void set_allocated_logical_camera(::gazebo::msgs::LogicalCameraSensor* logical_camera);

  // @@protoc_insertion_point(class_scope:gazebo.msgs.Sensor)
 private:
  inline void set_has_name();
  inline void clear_has_name();
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_parent();
  inline void clear_has_parent();
  inline void set_has_parent_id();
  inline void clear_has_parent_id();
  inline void set_has_type();
  inline void clear_has_type();
  inline void set_has_always_on();
  inline void clear_has_always_on();
  inline void set_has_update_rate();
  inline void clear_has_update_rate();
  inline void set_has_pose();
  inline void clear_has_pose();
  inline void set_has_camera();
  inline void clear_has_camera();
  inline void set_has_ray();
  inline void clear_has_ray();
  inline void set_has_contact();
  inline void clear_has_contact();
  inline void set_has_visualize();
  inline void clear_has_visualize();
  inline void set_has_topic();
  inline void clear_has_topic();
  inline void set_has_logical_camera();
  inline void clear_has_logical_camera();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* name_;
  ::std::string* parent_;
  ::google::protobuf::uint32 id_;
  ::google::protobuf::uint32 parent_id_;
  ::std::string* type_;
  double update_rate_;
  ::gazebo::msgs::Pose* pose_;
  ::gazebo::msgs::CameraSensor* camera_;
  ::gazebo::msgs::RaySensor* ray_;
  ::gazebo::msgs::ContactSensor* contact_;
  ::std::string* topic_;
  ::gazebo::msgs::LogicalCameraSensor* logical_camera_;
  bool always_on_;
  bool visualize_;
  friend void GZ_MSGS_VISIBLE protobuf_AddDesc_sensor_2eproto();
  friend void protobuf_AssignDesc_sensor_2eproto();
  friend void protobuf_ShutdownFile_sensor_2eproto();

  void InitAsDefaultInstance();
  static Sensor* default_instance_;
};
// ===================================================================


// ===================================================================

// Sensor

// required string name = 1;
inline bool Sensor::has_name() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Sensor::set_has_name() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Sensor::clear_has_name() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Sensor::clear_name() {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_->clear();
  }
  clear_has_name();
}
inline const ::std::string& Sensor::name() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.name)
  return *name_;
}
inline void Sensor::set_name(const ::std::string& value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.name)
}
inline void Sensor::set_name(const char* value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set_char:gazebo.msgs.Sensor.name)
}
inline void Sensor::set_name(const char* value, size_t size) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:gazebo.msgs.Sensor.name)
}
inline ::std::string* Sensor::mutable_name() {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.name)
  return name_;
}
inline ::std::string* Sensor::release_name() {
  clear_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = name_;
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Sensor::set_allocated_name(::std::string* name) {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete name_;
  }
  if (name) {
    set_has_name();
    name_ = name;
  } else {
    clear_has_name();
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.name)
}

// optional uint32 id = 2;
inline bool Sensor::has_id() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void Sensor::set_has_id() {
  _has_bits_[0] |= 0x00000002u;
}
inline void Sensor::clear_has_id() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void Sensor::clear_id() {
  id_ = 0u;
  clear_has_id();
}
inline ::google::protobuf::uint32 Sensor::id() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.id)
  return id_;
}
inline void Sensor::set_id(::google::protobuf::uint32 value) {
  set_has_id();
  id_ = value;
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.id)
}

// required string parent = 3;
inline bool Sensor::has_parent() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void Sensor::set_has_parent() {
  _has_bits_[0] |= 0x00000004u;
}
inline void Sensor::clear_has_parent() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void Sensor::clear_parent() {
  if (parent_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    parent_->clear();
  }
  clear_has_parent();
}
inline const ::std::string& Sensor::parent() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.parent)
  return *parent_;
}
inline void Sensor::set_parent(const ::std::string& value) {
  set_has_parent();
  if (parent_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    parent_ = new ::std::string;
  }
  parent_->assign(value);
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.parent)
}
inline void Sensor::set_parent(const char* value) {
  set_has_parent();
  if (parent_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    parent_ = new ::std::string;
  }
  parent_->assign(value);
  // @@protoc_insertion_point(field_set_char:gazebo.msgs.Sensor.parent)
}
inline void Sensor::set_parent(const char* value, size_t size) {
  set_has_parent();
  if (parent_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    parent_ = new ::std::string;
  }
  parent_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:gazebo.msgs.Sensor.parent)
}
inline ::std::string* Sensor::mutable_parent() {
  set_has_parent();
  if (parent_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    parent_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.parent)
  return parent_;
}
inline ::std::string* Sensor::release_parent() {
  clear_has_parent();
  if (parent_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = parent_;
    parent_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Sensor::set_allocated_parent(::std::string* parent) {
  if (parent_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete parent_;
  }
  if (parent) {
    set_has_parent();
    parent_ = parent;
  } else {
    clear_has_parent();
    parent_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.parent)
}

// optional uint32 parent_id = 4;
inline bool Sensor::has_parent_id() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void Sensor::set_has_parent_id() {
  _has_bits_[0] |= 0x00000008u;
}
inline void Sensor::clear_has_parent_id() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void Sensor::clear_parent_id() {
  parent_id_ = 0u;
  clear_has_parent_id();
}
inline ::google::protobuf::uint32 Sensor::parent_id() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.parent_id)
  return parent_id_;
}
inline void Sensor::set_parent_id(::google::protobuf::uint32 value) {
  set_has_parent_id();
  parent_id_ = value;
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.parent_id)
}

// required string type = 5;
inline bool Sensor::has_type() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void Sensor::set_has_type() {
  _has_bits_[0] |= 0x00000010u;
}
inline void Sensor::clear_has_type() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void Sensor::clear_type() {
  if (type_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_->clear();
  }
  clear_has_type();
}
inline const ::std::string& Sensor::type() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.type)
  return *type_;
}
inline void Sensor::set_type(const ::std::string& value) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(value);
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.type)
}
inline void Sensor::set_type(const char* value) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(value);
  // @@protoc_insertion_point(field_set_char:gazebo.msgs.Sensor.type)
}
inline void Sensor::set_type(const char* value, size_t size) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:gazebo.msgs.Sensor.type)
}
inline ::std::string* Sensor::mutable_type() {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.type)
  return type_;
}
inline ::std::string* Sensor::release_type() {
  clear_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = type_;
    type_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Sensor::set_allocated_type(::std::string* type) {
  if (type_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete type_;
  }
  if (type) {
    set_has_type();
    type_ = type;
  } else {
    clear_has_type();
    type_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.type)
}

// optional bool always_on = 6;
inline bool Sensor::has_always_on() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void Sensor::set_has_always_on() {
  _has_bits_[0] |= 0x00000020u;
}
inline void Sensor::clear_has_always_on() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void Sensor::clear_always_on() {
  always_on_ = false;
  clear_has_always_on();
}
inline bool Sensor::always_on() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.always_on)
  return always_on_;
}
inline void Sensor::set_always_on(bool value) {
  set_has_always_on();
  always_on_ = value;
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.always_on)
}

// optional double update_rate = 7;
inline bool Sensor::has_update_rate() const {
  return (_has_bits_[0] & 0x00000040u) != 0;
}
inline void Sensor::set_has_update_rate() {
  _has_bits_[0] |= 0x00000040u;
}
inline void Sensor::clear_has_update_rate() {
  _has_bits_[0] &= ~0x00000040u;
}
inline void Sensor::clear_update_rate() {
  update_rate_ = 0;
  clear_has_update_rate();
}
inline double Sensor::update_rate() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.update_rate)
  return update_rate_;
}
inline void Sensor::set_update_rate(double value) {
  set_has_update_rate();
  update_rate_ = value;
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.update_rate)
}

// optional .gazebo.msgs.Pose pose = 8;
inline bool Sensor::has_pose() const {
  return (_has_bits_[0] & 0x00000080u) != 0;
}
inline void Sensor::set_has_pose() {
  _has_bits_[0] |= 0x00000080u;
}
inline void Sensor::clear_has_pose() {
  _has_bits_[0] &= ~0x00000080u;
}
inline void Sensor::clear_pose() {
  if (pose_ != NULL) pose_->::gazebo::msgs::Pose::Clear();
  clear_has_pose();
}
inline const ::gazebo::msgs::Pose& Sensor::pose() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.pose)
  return pose_ != NULL ? *pose_ : *default_instance_->pose_;
}
inline ::gazebo::msgs::Pose* Sensor::mutable_pose() {
  set_has_pose();
  if (pose_ == NULL) pose_ = new ::gazebo::msgs::Pose;
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.pose)
  return pose_;
}
inline ::gazebo::msgs::Pose* Sensor::release_pose() {
  clear_has_pose();
  ::gazebo::msgs::Pose* temp = pose_;
  pose_ = NULL;
  return temp;
}
inline void Sensor::set_allocated_pose(::gazebo::msgs::Pose* pose) {
  delete pose_;
  pose_ = pose;
  if (pose) {
    set_has_pose();
  } else {
    clear_has_pose();
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.pose)
}

// optional .gazebo.msgs.CameraSensor camera = 9;
inline bool Sensor::has_camera() const {
  return (_has_bits_[0] & 0x00000100u) != 0;
}
inline void Sensor::set_has_camera() {
  _has_bits_[0] |= 0x00000100u;
}
inline void Sensor::clear_has_camera() {
  _has_bits_[0] &= ~0x00000100u;
}
inline void Sensor::clear_camera() {
  if (camera_ != NULL) camera_->::gazebo::msgs::CameraSensor::Clear();
  clear_has_camera();
}
inline const ::gazebo::msgs::CameraSensor& Sensor::camera() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.camera)
  return camera_ != NULL ? *camera_ : *default_instance_->camera_;
}
inline ::gazebo::msgs::CameraSensor* Sensor::mutable_camera() {
  set_has_camera();
  if (camera_ == NULL) camera_ = new ::gazebo::msgs::CameraSensor;
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.camera)
  return camera_;
}
inline ::gazebo::msgs::CameraSensor* Sensor::release_camera() {
  clear_has_camera();
  ::gazebo::msgs::CameraSensor* temp = camera_;
  camera_ = NULL;
  return temp;
}
inline void Sensor::set_allocated_camera(::gazebo::msgs::CameraSensor* camera) {
  delete camera_;
  camera_ = camera;
  if (camera) {
    set_has_camera();
  } else {
    clear_has_camera();
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.camera)
}

// optional .gazebo.msgs.RaySensor ray = 10;
inline bool Sensor::has_ray() const {
  return (_has_bits_[0] & 0x00000200u) != 0;
}
inline void Sensor::set_has_ray() {
  _has_bits_[0] |= 0x00000200u;
}
inline void Sensor::clear_has_ray() {
  _has_bits_[0] &= ~0x00000200u;
}
inline void Sensor::clear_ray() {
  if (ray_ != NULL) ray_->::gazebo::msgs::RaySensor::Clear();
  clear_has_ray();
}
inline const ::gazebo::msgs::RaySensor& Sensor::ray() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.ray)
  return ray_ != NULL ? *ray_ : *default_instance_->ray_;
}
inline ::gazebo::msgs::RaySensor* Sensor::mutable_ray() {
  set_has_ray();
  if (ray_ == NULL) ray_ = new ::gazebo::msgs::RaySensor;
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.ray)
  return ray_;
}
inline ::gazebo::msgs::RaySensor* Sensor::release_ray() {
  clear_has_ray();
  ::gazebo::msgs::RaySensor* temp = ray_;
  ray_ = NULL;
  return temp;
}
inline void Sensor::set_allocated_ray(::gazebo::msgs::RaySensor* ray) {
  delete ray_;
  ray_ = ray;
  if (ray) {
    set_has_ray();
  } else {
    clear_has_ray();
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.ray)
}

// optional .gazebo.msgs.ContactSensor contact = 11;
inline bool Sensor::has_contact() const {
  return (_has_bits_[0] & 0x00000400u) != 0;
}
inline void Sensor::set_has_contact() {
  _has_bits_[0] |= 0x00000400u;
}
inline void Sensor::clear_has_contact() {
  _has_bits_[0] &= ~0x00000400u;
}
inline void Sensor::clear_contact() {
  if (contact_ != NULL) contact_->::gazebo::msgs::ContactSensor::Clear();
  clear_has_contact();
}
inline const ::gazebo::msgs::ContactSensor& Sensor::contact() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.contact)
  return contact_ != NULL ? *contact_ : *default_instance_->contact_;
}
inline ::gazebo::msgs::ContactSensor* Sensor::mutable_contact() {
  set_has_contact();
  if (contact_ == NULL) contact_ = new ::gazebo::msgs::ContactSensor;
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.contact)
  return contact_;
}
inline ::gazebo::msgs::ContactSensor* Sensor::release_contact() {
  clear_has_contact();
  ::gazebo::msgs::ContactSensor* temp = contact_;
  contact_ = NULL;
  return temp;
}
inline void Sensor::set_allocated_contact(::gazebo::msgs::ContactSensor* contact) {
  delete contact_;
  contact_ = contact;
  if (contact) {
    set_has_contact();
  } else {
    clear_has_contact();
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.contact)
}

// optional bool visualize = 12;
inline bool Sensor::has_visualize() const {
  return (_has_bits_[0] & 0x00000800u) != 0;
}
inline void Sensor::set_has_visualize() {
  _has_bits_[0] |= 0x00000800u;
}
inline void Sensor::clear_has_visualize() {
  _has_bits_[0] &= ~0x00000800u;
}
inline void Sensor::clear_visualize() {
  visualize_ = false;
  clear_has_visualize();
}
inline bool Sensor::visualize() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.visualize)
  return visualize_;
}
inline void Sensor::set_visualize(bool value) {
  set_has_visualize();
  visualize_ = value;
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.visualize)
}

// optional string topic = 13;
inline bool Sensor::has_topic() const {
  return (_has_bits_[0] & 0x00001000u) != 0;
}
inline void Sensor::set_has_topic() {
  _has_bits_[0] |= 0x00001000u;
}
inline void Sensor::clear_has_topic() {
  _has_bits_[0] &= ~0x00001000u;
}
inline void Sensor::clear_topic() {
  if (topic_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    topic_->clear();
  }
  clear_has_topic();
}
inline const ::std::string& Sensor::topic() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.topic)
  return *topic_;
}
inline void Sensor::set_topic(const ::std::string& value) {
  set_has_topic();
  if (topic_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    topic_ = new ::std::string;
  }
  topic_->assign(value);
  // @@protoc_insertion_point(field_set:gazebo.msgs.Sensor.topic)
}
inline void Sensor::set_topic(const char* value) {
  set_has_topic();
  if (topic_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    topic_ = new ::std::string;
  }
  topic_->assign(value);
  // @@protoc_insertion_point(field_set_char:gazebo.msgs.Sensor.topic)
}
inline void Sensor::set_topic(const char* value, size_t size) {
  set_has_topic();
  if (topic_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    topic_ = new ::std::string;
  }
  topic_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:gazebo.msgs.Sensor.topic)
}
inline ::std::string* Sensor::mutable_topic() {
  set_has_topic();
  if (topic_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    topic_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.topic)
  return topic_;
}
inline ::std::string* Sensor::release_topic() {
  clear_has_topic();
  if (topic_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = topic_;
    topic_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Sensor::set_allocated_topic(::std::string* topic) {
  if (topic_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete topic_;
  }
  if (topic) {
    set_has_topic();
    topic_ = topic;
  } else {
    clear_has_topic();
    topic_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.topic)
}

// optional .gazebo.msgs.LogicalCameraSensor logical_camera = 14;
inline bool Sensor::has_logical_camera() const {
  return (_has_bits_[0] & 0x00002000u) != 0;
}
inline void Sensor::set_has_logical_camera() {
  _has_bits_[0] |= 0x00002000u;
}
inline void Sensor::clear_has_logical_camera() {
  _has_bits_[0] &= ~0x00002000u;
}
inline void Sensor::clear_logical_camera() {
  if (logical_camera_ != NULL) logical_camera_->::gazebo::msgs::LogicalCameraSensor::Clear();
  clear_has_logical_camera();
}
inline const ::gazebo::msgs::LogicalCameraSensor& Sensor::logical_camera() const {
  // @@protoc_insertion_point(field_get:gazebo.msgs.Sensor.logical_camera)
  return logical_camera_ != NULL ? *logical_camera_ : *default_instance_->logical_camera_;
}
inline ::gazebo::msgs::LogicalCameraSensor* Sensor::mutable_logical_camera() {
  set_has_logical_camera();
  if (logical_camera_ == NULL) logical_camera_ = new ::gazebo::msgs::LogicalCameraSensor;
  // @@protoc_insertion_point(field_mutable:gazebo.msgs.Sensor.logical_camera)
  return logical_camera_;
}
inline ::gazebo::msgs::LogicalCameraSensor* Sensor::release_logical_camera() {
  clear_has_logical_camera();
  ::gazebo::msgs::LogicalCameraSensor* temp = logical_camera_;
  logical_camera_ = NULL;
  return temp;
}
inline void Sensor::set_allocated_logical_camera(::gazebo::msgs::LogicalCameraSensor* logical_camera) {
  delete logical_camera_;
  logical_camera_ = logical_camera;
  if (logical_camera) {
    set_has_logical_camera();
  } else {
    clear_has_logical_camera();
  }
  // @@protoc_insertion_point(field_set_allocated:gazebo.msgs.Sensor.logical_camera)
}


typedef boost::shared_ptr<gazebo::msgs::Sensor> SensorPtr;
// @@protoc_insertion_point(namespace_scope)

}  // namespace msgs
}  // namespace gazebo

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

typedef const boost::shared_ptr<gazebo::msgs::Sensor const> ConstSensorPtr;
// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_sensor_2eproto__INCLUDED