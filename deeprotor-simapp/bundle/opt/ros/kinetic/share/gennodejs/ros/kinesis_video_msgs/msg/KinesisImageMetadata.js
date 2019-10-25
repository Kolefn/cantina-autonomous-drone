// Auto-generated. Do not edit!

// (in-package kinesis_video_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let diagnostic_msgs = _finder('diagnostic_msgs');

//-----------------------------------------------------------

class KinesisImageMetadata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.metadata = null;
    }
    else {
      if (initObj.hasOwnProperty('metadata')) {
        this.metadata = initObj.metadata
      }
      else {
        this.metadata = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinesisImageMetadata
    // Serialize message field [metadata]
    // Serialize the length for message field [metadata]
    bufferOffset = _serializer.uint32(obj.metadata.length, buffer, bufferOffset);
    obj.metadata.forEach((val) => {
      bufferOffset = diagnostic_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinesisImageMetadata
    let len;
    let data = new KinesisImageMetadata(null);
    // Deserialize message field [metadata]
    // Deserialize array length for message field [metadata]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.metadata = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.metadata[i] = diagnostic_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.metadata.forEach((val) => {
      length += diagnostic_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinesis_video_msgs/KinesisImageMetadata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bed809d676f785d0b0f3eb89897c74f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html
    diagnostic_msgs/KeyValue[] metadata
    
    ================================================================================
    MSG: diagnostic_msgs/KeyValue
    string key # what to label this value when viewing
    string value # a value to track over time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KinesisImageMetadata(null);
    if (msg.metadata !== undefined) {
      resolved.metadata = new Array(msg.metadata.length);
      for (let i = 0; i < resolved.metadata.length; ++i) {
        resolved.metadata[i] = diagnostic_msgs.msg.KeyValue.Resolve(msg.metadata[i]);
      }
    }
    else {
      resolved.metadata = []
    }

    return resolved;
    }
};

module.exports = KinesisImageMetadata;
