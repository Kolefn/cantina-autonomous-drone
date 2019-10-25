; Auto-generated. Do not edit!


(cl:in-package kinesis_video_msgs-msg)


;//! \htmlinclude KinesisVideoFrame.msg.html

(cl:defclass <KinesisVideoFrame> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (decoding_ts
    :reader decoding_ts
    :initarg :decoding_ts
    :type cl:integer
    :initform 0)
   (presentation_ts
    :reader presentation_ts
    :initarg :presentation_ts
    :type cl:integer
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (codec_private_data
    :reader codec_private_data
    :initarg :codec_private_data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (frame_data
    :reader frame_data
    :initarg :frame_data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (metadata
    :reader metadata
    :initarg :metadata
    :type (cl:vector diagnostic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnostic_msgs-msg:KeyValue))))
)

(cl:defclass KinesisVideoFrame (<KinesisVideoFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinesisVideoFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinesisVideoFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinesis_video_msgs-msg:<KinesisVideoFrame> is deprecated: use kinesis_video_msgs-msg:KinesisVideoFrame instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:index-val is deprecated.  Use kinesis_video_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'decoding_ts-val :lambda-list '(m))
(cl:defmethod decoding_ts-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:decoding_ts-val is deprecated.  Use kinesis_video_msgs-msg:decoding_ts instead.")
  (decoding_ts m))

(cl:ensure-generic-function 'presentation_ts-val :lambda-list '(m))
(cl:defmethod presentation_ts-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:presentation_ts-val is deprecated.  Use kinesis_video_msgs-msg:presentation_ts instead.")
  (presentation_ts m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:duration-val is deprecated.  Use kinesis_video_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'codec_private_data-val :lambda-list '(m))
(cl:defmethod codec_private_data-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:codec_private_data-val is deprecated.  Use kinesis_video_msgs-msg:codec_private_data instead.")
  (codec_private_data m))

(cl:ensure-generic-function 'frame_data-val :lambda-list '(m))
(cl:defmethod frame_data-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:frame_data-val is deprecated.  Use kinesis_video_msgs-msg:frame_data instead.")
  (frame_data m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:flags-val is deprecated.  Use kinesis_video_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'metadata-val :lambda-list '(m))
(cl:defmethod metadata-val ((m <KinesisVideoFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:metadata-val is deprecated.  Use kinesis_video_msgs-msg:metadata instead.")
  (metadata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinesisVideoFrame>) ostream)
  "Serializes a message object of type '<KinesisVideoFrame>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'decoding_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'presentation_ts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'duration)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'codec_private_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'codec_private_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frame_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'frame_data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'metadata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metadata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinesisVideoFrame>) istream)
  "Deserializes a message object of type '<KinesisVideoFrame>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'decoding_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'presentation_ts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'codec_private_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'codec_private_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frame_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frame_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'metadata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'metadata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnostic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinesisVideoFrame>)))
  "Returns string type for a message object of type '<KinesisVideoFrame>"
  "kinesis_video_msgs/KinesisVideoFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinesisVideoFrame)))
  "Returns string type for a message object of type 'KinesisVideoFrame"
  "kinesis_video_msgs/KinesisVideoFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinesisVideoFrame>)))
  "Returns md5sum for a message object of type '<KinesisVideoFrame>"
  "27aa4ed7caa3f72619dd565fd09eddf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinesisVideoFrame)))
  "Returns md5sum for a message object of type 'KinesisVideoFrame"
  "27aa4ed7caa3f72619dd565fd09eddf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinesisVideoFrame>)))
  "Returns full string definition for message of type '<KinesisVideoFrame>"
  (cl:format cl:nil "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-data.html#how-data-header-frame~%uint32 index~%~%uint64 decoding_ts      # in microseconds~%uint64 presentation_ts  # in microseconds~%uint64 duration         # in microseconds~%~%uint8[] codec_private_data~%uint8[] frame_data~%uint16 flags~%~%# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html~%diagnostic_msgs/KeyValue[] metadata~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinesisVideoFrame)))
  "Returns full string definition for message of type 'KinesisVideoFrame"
  (cl:format cl:nil "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-data.html#how-data-header-frame~%uint32 index~%~%uint64 decoding_ts      # in microseconds~%uint64 presentation_ts  # in microseconds~%uint64 duration         # in microseconds~%~%uint8[] codec_private_data~%uint8[] frame_data~%uint16 flags~%~%# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html~%diagnostic_msgs/KeyValue[] metadata~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinesisVideoFrame>))
  (cl:+ 0
     4
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'codec_private_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frame_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'metadata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinesisVideoFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'KinesisVideoFrame
    (cl:cons ':index (index msg))
    (cl:cons ':decoding_ts (decoding_ts msg))
    (cl:cons ':presentation_ts (presentation_ts msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':codec_private_data (codec_private_data msg))
    (cl:cons ':frame_data (frame_data msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':metadata (metadata msg))
))
