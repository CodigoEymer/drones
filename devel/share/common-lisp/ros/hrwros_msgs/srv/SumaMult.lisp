; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-srv)


;//! \htmlinclude SumaMult-request.msg.html

(cl:defclass <SumaMult-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0))
)

(cl:defclass SumaMult-request (<SumaMult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumaMult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumaMult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<SumaMult-request> is deprecated: use hrwros_msgs-srv:SumaMult-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SumaMult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:a-val is deprecated.  Use hrwros_msgs-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <SumaMult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:b-val is deprecated.  Use hrwros_msgs-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <SumaMult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:c-val is deprecated.  Use hrwros_msgs-srv:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <SumaMult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:d-val is deprecated.  Use hrwros_msgs-srv:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumaMult-request>) ostream)
  "Serializes a message object of type '<SumaMult-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumaMult-request>) istream)
  "Deserializes a message object of type '<SumaMult-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumaMult-request>)))
  "Returns string type for a service object of type '<SumaMult-request>"
  "hrwros_msgs/SumaMultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumaMult-request)))
  "Returns string type for a service object of type 'SumaMult-request"
  "hrwros_msgs/SumaMultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumaMult-request>)))
  "Returns md5sum for a message object of type '<SumaMult-request>"
  "e9e24fd947294769c45ffd94755c4345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumaMult-request)))
  "Returns md5sum for a message object of type 'SumaMult-request"
  "e9e24fd947294769c45ffd94755c4345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumaMult-request>)))
  "Returns full string definition for message of type '<SumaMult-request>"
  (cl:format cl:nil "float64 a		~%float64 b~%float64 c~%float64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumaMult-request)))
  "Returns full string definition for message of type 'SumaMult-request"
  (cl:format cl:nil "float64 a		~%float64 b~%float64 c~%float64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumaMult-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumaMult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SumaMult-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
))
;//! \htmlinclude SumaMult-response.msg.html

(cl:defclass <SumaMult-response> (roslisp-msg-protocol:ros-message)
  ((suma
    :reader suma
    :initarg :suma
    :type cl:float
    :initform 0.0)
   (mult
    :reader mult
    :initarg :mult
    :type cl:float
    :initform 0.0))
)

(cl:defclass SumaMult-response (<SumaMult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumaMult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumaMult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<SumaMult-response> is deprecated: use hrwros_msgs-srv:SumaMult-response instead.")))

(cl:ensure-generic-function 'suma-val :lambda-list '(m))
(cl:defmethod suma-val ((m <SumaMult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:suma-val is deprecated.  Use hrwros_msgs-srv:suma instead.")
  (suma m))

(cl:ensure-generic-function 'mult-val :lambda-list '(m))
(cl:defmethod mult-val ((m <SumaMult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:mult-val is deprecated.  Use hrwros_msgs-srv:mult instead.")
  (mult m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumaMult-response>) ostream)
  "Serializes a message object of type '<SumaMult-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'suma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mult))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumaMult-response>) istream)
  "Deserializes a message object of type '<SumaMult-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'suma) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mult) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumaMult-response>)))
  "Returns string type for a service object of type '<SumaMult-response>"
  "hrwros_msgs/SumaMultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumaMult-response)))
  "Returns string type for a service object of type 'SumaMult-response"
  "hrwros_msgs/SumaMultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumaMult-response>)))
  "Returns md5sum for a message object of type '<SumaMult-response>"
  "e9e24fd947294769c45ffd94755c4345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumaMult-response)))
  "Returns md5sum for a message object of type 'SumaMult-response"
  "e9e24fd947294769c45ffd94755c4345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumaMult-response>)))
  "Returns full string definition for message of type '<SumaMult-response>"
  (cl:format cl:nil "float64 suma	~%float64 mult~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumaMult-response)))
  "Returns full string definition for message of type 'SumaMult-response"
  (cl:format cl:nil "float64 suma	~%float64 mult~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumaMult-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumaMult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SumaMult-response
    (cl:cons ':suma (suma msg))
    (cl:cons ':mult (mult msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SumaMult)))
  'SumaMult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SumaMult)))
  'SumaMult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumaMult)))
  "Returns string type for a service object of type '<SumaMult>"
  "hrwros_msgs/SumaMult")