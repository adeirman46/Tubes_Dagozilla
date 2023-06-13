; Auto-generated. Do not edit!


(cl:in-package control-msg)


;//! \htmlinclude EncoderData.msg.html

(cl:defclass <EncoderData> (roslisp-msg-protocol:ros-message)
  ((en_ext1
    :reader en_ext1
    :initarg :en_ext1
    :type cl:float
    :initform 0.0)
   (en_ext2
    :reader en_ext2
    :initarg :en_ext2
    :type cl:float
    :initform 0.0)
   (en_ext3
    :reader en_ext3
    :initarg :en_ext3
    :type cl:float
    :initform 0.0)
   (en_in1
    :reader en_in1
    :initarg :en_in1
    :type cl:float
    :initform 0.0)
   (en_in2
    :reader en_in2
    :initarg :en_in2
    :type cl:float
    :initform 0.0)
   (en_in3
    :reader en_in3
    :initarg :en_in3
    :type cl:float
    :initform 0.0)
   (en_in4
    :reader en_in4
    :initarg :en_in4
    :type cl:float
    :initform 0.0))
)

(cl:defclass EncoderData (<EncoderData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-msg:<EncoderData> is deprecated: use control-msg:EncoderData instead.")))

(cl:ensure-generic-function 'en_ext1-val :lambda-list '(m))
(cl:defmethod en_ext1-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_ext1-val is deprecated.  Use control-msg:en_ext1 instead.")
  (en_ext1 m))

(cl:ensure-generic-function 'en_ext2-val :lambda-list '(m))
(cl:defmethod en_ext2-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_ext2-val is deprecated.  Use control-msg:en_ext2 instead.")
  (en_ext2 m))

(cl:ensure-generic-function 'en_ext3-val :lambda-list '(m))
(cl:defmethod en_ext3-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_ext3-val is deprecated.  Use control-msg:en_ext3 instead.")
  (en_ext3 m))

(cl:ensure-generic-function 'en_in1-val :lambda-list '(m))
(cl:defmethod en_in1-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_in1-val is deprecated.  Use control-msg:en_in1 instead.")
  (en_in1 m))

(cl:ensure-generic-function 'en_in2-val :lambda-list '(m))
(cl:defmethod en_in2-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_in2-val is deprecated.  Use control-msg:en_in2 instead.")
  (en_in2 m))

(cl:ensure-generic-function 'en_in3-val :lambda-list '(m))
(cl:defmethod en_in3-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_in3-val is deprecated.  Use control-msg:en_in3 instead.")
  (en_in3 m))

(cl:ensure-generic-function 'en_in4-val :lambda-list '(m))
(cl:defmethod en_in4-val ((m <EncoderData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:en_in4-val is deprecated.  Use control-msg:en_in4 instead.")
  (en_in4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderData>) ostream)
  "Serializes a message object of type '<EncoderData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_ext1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_ext2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_ext3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_in1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_in2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_in3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'en_in4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderData>) istream)
  "Deserializes a message object of type '<EncoderData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_ext1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_ext2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_ext3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_in1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_in2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_in3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'en_in4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderData>)))
  "Returns string type for a message object of type '<EncoderData>"
  "control/EncoderData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderData)))
  "Returns string type for a message object of type 'EncoderData"
  "control/EncoderData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderData>)))
  "Returns md5sum for a message object of type '<EncoderData>"
  "23ea1aec3b3aed5da94835b8bde1468c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderData)))
  "Returns md5sum for a message object of type 'EncoderData"
  "23ea1aec3b3aed5da94835b8bde1468c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderData>)))
  "Returns full string definition for message of type '<EncoderData>"
  (cl:format cl:nil "float32 en_ext1~%float32 en_ext2~%float32 en_ext3~%float32 en_in1~%float32 en_in2~%float32 en_in3~%float32 en_in4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderData)))
  "Returns full string definition for message of type 'EncoderData"
  (cl:format cl:nil "float32 en_ext1~%float32 en_ext2~%float32 en_ext3~%float32 en_in1~%float32 en_in2~%float32 en_in3~%float32 en_in4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderData>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderData
    (cl:cons ':en_ext1 (en_ext1 msg))
    (cl:cons ':en_ext2 (en_ext2 msg))
    (cl:cons ':en_ext3 (en_ext3 msg))
    (cl:cons ':en_in1 (en_in1 msg))
    (cl:cons ':en_in2 (en_in2 msg))
    (cl:cons ':en_in3 (en_in3 msg))
    (cl:cons ':en_in4 (en_in4 msg))
))
