; Auto-generated. Do not edit!


(cl:in-package ball_detected-msg)


;//! \htmlinclude image.msg.html

(cl:defclass <image> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass image (<image>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ball_detected-msg:<image> is deprecated: use ball_detected-msg:image instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ball_detected-msg:x-val is deprecated.  Use ball_detected-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ball_detected-msg:y-val is deprecated.  Use ball_detected-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image>) ostream)
  "Serializes a message object of type '<image>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image>) istream)
  "Deserializes a message object of type '<image>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image>)))
  "Returns string type for a message object of type '<image>"
  "ball_detected/image")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image)))
  "Returns string type for a message object of type 'image"
  "ball_detected/image")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image>)))
  "Returns md5sum for a message object of type '<image>"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image)))
  "Returns md5sum for a message object of type 'image"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image>)))
  "Returns full string definition for message of type '<image>"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image)))
  "Returns full string definition for message of type 'image"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image>))
  "Converts a ROS message object to a list"
  (cl:list 'image
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
