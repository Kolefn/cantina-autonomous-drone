; Auto-generated. Do not edit!


(cl:in-package deeprotor_simulation_environment-srv)


;//! \htmlinclude ResetDroneSrv-request.msg.html

(cl:defclass <ResetDroneSrv-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
    (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
    (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass ResetDroneSrv-request (<ResetDroneSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetDroneSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetDroneSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeprotor_simulation_environment-srv:<ResetDroneSrv-request> is deprecated: use deeprotor_simulation_environment-srv:ResetDroneSrv-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ResetDroneSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeprotor_simulation_environment-srv:x-val is deprecated.  Use deeprotor_simulation_environment-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ResetDroneSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeprotor_simulation_environment-srv:y-val is deprecated.  Use deeprotor_simulation_environment-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ResetDroneSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeprotor_simulation_environment-srv:z-val is deprecated.  Use deeprotor_simulation_environment-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetDroneSrv-request>) ostream)
  "Serializes a message object of type '<ResetDroneSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetDroneSrv-request>) istream)
  "Deserializes a message object of type '<ResetDroneSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetDroneSrv-request>)))
  "Returns string type for a service object of type '<ResetDroneSrv-request>"
  "deeprotor_simulation_environment/ResetDroneSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDroneSrv-request)))
  "Returns string type for a service object of type 'ResetDroneSrv-request"
  "deeprotor_simulation_environment/ResetDroneSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetDroneSrv-request>)))
  "Returns md5sum for a message object of type '<ResetDroneSrv-request>"
  "51459ac9873b166b6314083bf1771edb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetDroneSrv-request)))
  "Returns md5sum for a message object of type 'ResetDroneSrv-request"
  "51459ac9873b166b6314083bf1771edb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetDroneSrv-request>)))
  "Returns full string definition for message of type '<ResetDroneSrv-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetDroneSrv-request)))
  "Returns full string definition for message of type 'ResetDroneSrv-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetDroneSrv-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetDroneSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetDroneSrv-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude ResetDroneSrv-response.msg.html

(cl:defclass <ResetDroneSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetDroneSrv-response (<ResetDroneSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetDroneSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetDroneSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeprotor_simulation_environment-srv:<ResetDroneSrv-response> is deprecated: use deeprotor_simulation_environment-srv:ResetDroneSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetDroneSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeprotor_simulation_environment-srv:success-val is deprecated.  Use deeprotor_simulation_environment-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetDroneSrv-response>) ostream)
  "Serializes a message object of type '<ResetDroneSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetDroneSrv-response>) istream)
  "Deserializes a message object of type '<ResetDroneSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetDroneSrv-response>)))
  "Returns string type for a service object of type '<ResetDroneSrv-response>"
  "deeprotor_simulation_environment/ResetDroneSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDroneSrv-response)))
  "Returns string type for a service object of type 'ResetDroneSrv-response"
  "deeprotor_simulation_environment/ResetDroneSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetDroneSrv-response>)))
  "Returns md5sum for a message object of type '<ResetDroneSrv-response>"
  "51459ac9873b166b6314083bf1771edb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetDroneSrv-response)))
  "Returns md5sum for a message object of type 'ResetDroneSrv-response"
  "51459ac9873b166b6314083bf1771edb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetDroneSrv-response>)))
  "Returns full string definition for message of type '<ResetDroneSrv-response>"
  (cl:format cl:nil "int32 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetDroneSrv-response)))
  "Returns full string definition for message of type 'ResetDroneSrv-response"
  (cl:format cl:nil "int32 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetDroneSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetDroneSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetDroneSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetDroneSrv)))
  'ResetDroneSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetDroneSrv)))
  'ResetDroneSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetDroneSrv)))
  "Returns string type for a service object of type '<ResetDroneSrv>"
  "deeprotor_simulation_environment/ResetDroneSrv")