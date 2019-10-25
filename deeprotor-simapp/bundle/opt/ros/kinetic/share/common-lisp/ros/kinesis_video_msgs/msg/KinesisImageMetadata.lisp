; Auto-generated. Do not edit!


(cl:in-package kinesis_video_msgs-msg)


;//! \htmlinclude KinesisImageMetadata.msg.html

(cl:defclass <KinesisImageMetadata> (roslisp-msg-protocol:ros-message)
  ((metadata
    :reader metadata
    :initarg :metadata
    :type (cl:vector diagnostic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnostic_msgs-msg:KeyValue))))
)

(cl:defclass KinesisImageMetadata (<KinesisImageMetadata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinesisImageMetadata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinesisImageMetadata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kinesis_video_msgs-msg:<KinesisImageMetadata> is deprecated: use kinesis_video_msgs-msg:KinesisImageMetadata instead.")))

(cl:ensure-generic-function 'metadata-val :lambda-list '(m))
(cl:defmethod metadata-val ((m <KinesisImageMetadata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kinesis_video_msgs-msg:metadata-val is deprecated.  Use kinesis_video_msgs-msg:metadata instead.")
  (metadata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinesisImageMetadata>) ostream)
  "Serializes a message object of type '<KinesisImageMetadata>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'metadata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metadata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinesisImageMetadata>) istream)
  "Deserializes a message object of type '<KinesisImageMetadata>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinesisImageMetadata>)))
  "Returns string type for a message object of type '<KinesisImageMetadata>"
  "kinesis_video_msgs/KinesisImageMetadata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinesisImageMetadata)))
  "Returns string type for a message object of type 'KinesisImageMetadata"
  "kinesis_video_msgs/KinesisImageMetadata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinesisImageMetadata>)))
  "Returns md5sum for a message object of type '<KinesisImageMetadata>"
  "bed809d676f785d0b0f3eb89897c74f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinesisImageMetadata)))
  "Returns md5sum for a message object of type 'KinesisImageMetadata"
  "bed809d676f785d0b0f3eb89897c74f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinesisImageMetadata>)))
  "Returns full string definition for message of type '<KinesisImageMetadata>"
  (cl:format cl:nil "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html~%diagnostic_msgs/KeyValue[] metadata~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinesisImageMetadata)))
  "Returns full string definition for message of type 'KinesisImageMetadata"
  (cl:format cl:nil "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html~%diagnostic_msgs/KeyValue[] metadata~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinesisImageMetadata>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'metadata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinesisImageMetadata>))
  "Converts a ROS message object to a list"
  (cl:list 'KinesisImageMetadata
    (cl:cons ':metadata (metadata msg))
))
