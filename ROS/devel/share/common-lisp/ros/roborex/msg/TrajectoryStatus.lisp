; Auto-generated. Do not edit!


(cl:in-package roborex-msg)


;//! \htmlinclude TrajectoryStatus.msg.html

(cl:defclass <TrajectoryStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass TrajectoryStatus (<TrajectoryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-msg:<TrajectoryStatus> is deprecated: use roborex-msg:TrajectoryStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrajectoryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:status-val is deprecated.  Use roborex-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrajectoryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:id-val is deprecated.  Use roborex-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryStatus>) ostream)
  "Serializes a message object of type '<TrajectoryStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryStatus>) istream)
  "Deserializes a message object of type '<TrajectoryStatus>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryStatus>)))
  "Returns string type for a message object of type '<TrajectoryStatus>"
  "roborex/TrajectoryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryStatus)))
  "Returns string type for a message object of type 'TrajectoryStatus"
  "roborex/TrajectoryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryStatus>)))
  "Returns md5sum for a message object of type '<TrajectoryStatus>"
  "8709cd49ae9641b749714ade70054694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryStatus)))
  "Returns md5sum for a message object of type 'TrajectoryStatus"
  "8709cd49ae9641b749714ade70054694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryStatus>)))
  "Returns full string definition for message of type '<TrajectoryStatus>"
  (cl:format cl:nil "bool status~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryStatus)))
  "Returns full string definition for message of type 'TrajectoryStatus"
  (cl:format cl:nil "bool status~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryStatus>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryStatus
    (cl:cons ':status (status msg))
    (cl:cons ':id (id msg))
))
