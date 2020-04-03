; Auto-generated. Do not edit!


(cl:in-package sailing_robot-msg)


;//! \htmlinclude ll.msg.html

(cl:defclass <ll> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0))
)

(cl:defclass ll (<ll>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ll>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'll)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sailing_robot-msg:<ll> is deprecated: use sailing_robot-msg:ll instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <ll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sailing_robot-msg:lat-val is deprecated.  Use sailing_robot-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <ll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sailing_robot-msg:lon-val is deprecated.  Use sailing_robot-msg:lon instead.")
  (lon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ll>) ostream)
  "Serializes a message object of type '<ll>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ll>) istream)
  "Deserializes a message object of type '<ll>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ll>)))
  "Returns string type for a message object of type '<ll>"
  "sailing_robot/ll")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'll)))
  "Returns string type for a message object of type 'll"
  "sailing_robot/ll")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ll>)))
  "Returns md5sum for a message object of type '<ll>"
  "c24029cbb90b28da08009a1a44081308")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'll)))
  "Returns md5sum for a message object of type 'll"
  "c24029cbb90b28da08009a1a44081308")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ll>)))
  "Returns full string definition for message of type '<ll>"
  (cl:format cl:nil "# message for publishing position~%float32 lat~%float32 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'll)))
  "Returns full string definition for message of type 'll"
  (cl:format cl:nil "# message for publishing position~%float32 lat~%float32 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ll>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ll>))
  "Converts a ROS message object to a list"
  (cl:list 'll
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
))
