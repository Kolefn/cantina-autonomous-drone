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

class KinesisVideoFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.decoding_ts = null;
      this.presentation_ts = null;
      this.duration = null;
      this.codec_private_data = null;
      this.frame_data = null;
      this.flags = null;
      this.metadata = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('decoding_ts')) {
        this.decoding_ts = initObj.decoding_ts
      }
      else {
        this.decoding_ts = 0;
      }
      if (initObj.hasOwnProperty('presentation_ts')) {
        this.presentation_ts = initObj.presentation_ts
      }
      else {
        this.presentation_ts = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('codec_private_data')) {
        this.codec_private_data = initObj.codec_private_data
      }
      else {
        this.codec_private_data = [];
      }
      if (initObj.hasOwnProperty('frame_data')) {
        this.frame_data = initObj.frame_data
      }
      else {
        this.frame_data = [];
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('metadata')) {
        this.metadata = initObj.metadata
      }
      else {
        this.metadata = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinesisVideoFrame
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    // Serialize message field [decoding_ts]
    bufferOffset = _serializer.uint64(obj.decoding_ts, buffer, bufferOffset);
    // Serialize message field [presentation_ts]
    bufferOffset = _serializer.uint64(obj.presentation_ts, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint64(obj.duration, buffer, bufferOffset);
    // Serialize message field [codec_private_data]
    bufferOffset = _arraySerializer.uint8(obj.codec_private_data, buffer, bufferOffset, null);
    // Serialize message field [frame_data]
    bufferOffset = _arraySerializer.uint8(obj.frame_data, buffer, bufferOffset, null);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [metadata]
    // Serialize the length for message field [metadata]
    bufferOffset = _serializer.uint32(obj.metadata.length, buffer, bufferOffset);
    obj.metadata.forEach((val) => {
      bufferOffset = diagnostic_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinesisVideoFrame
    let len;
    let data = new KinesisVideoFrame(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [decoding_ts]
    data.decoding_ts = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [presentation_ts]
    data.presentation_ts = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [codec_private_data]
    data.codec_private_data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [frame_data]
    data.frame_data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
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
    length += object.codec_private_data.length;
    length += object.frame_data.length;
    object.metadata.forEach((val) => {
      length += diagnostic_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kinesis_video_msgs/KinesisVideoFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27aa4ed7caa3f72619dd565fd09eddf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-data.html#how-data-header-frame
    uint32 index
    
    uint64 decoding_ts      # in microseconds
    uint64 presentation_ts  # in microseconds
    uint64 duration         # in microseconds
    
    uint8[] codec_private_data
    uint8[] frame_data
    uint16 flags
    
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
    const resolved = new KinesisVideoFrame(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.decoding_ts !== undefined) {
      resolved.decoding_ts = msg.decoding_ts;
    }
    else {
      resolved.decoding_ts = 0
    }

    if (msg.presentation_ts !== undefined) {
      resolved.presentation_ts = msg.presentation_ts;
    }
    else {
      resolved.presentation_ts = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.codec_private_data !== undefined) {
      resolved.codec_private_data = msg.codec_private_data;
    }
    else {
      resolved.codec_private_data = []
    }

    if (msg.frame_data !== undefined) {
      resolved.frame_data = msg.frame_data;
    }
    else {
      resolved.frame_data = []
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

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

module.exports = KinesisVideoFrame;
