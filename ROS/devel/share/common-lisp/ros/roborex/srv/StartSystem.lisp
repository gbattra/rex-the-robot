; Auto-generated. Do not edit!


(cl:in-package roborex-srv)


;//! \htmlinclude StartSystem-request.msg.html

(cl:defclass <StartSystem-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartSystem-request (<StartSystem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartSystem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartSystem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<StartSystem-request> is deprecated: use roborex-srv:StartSystem-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <StartSystem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:start-val is deprecated.  Use roborex-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartSystem-request>) ostream)
  "Serializes a message object of type '<StartSystem-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartSystem-request>) istream)
  "Deserializes a message object of type '<StartSystem-request>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartSystem-request>)))
  "Returns string type for a service object of type '<StartSystem-request>"
  "roborex/StartSystemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartSystem-request)))
  "Returns string type for a service object of type 'StartSystem-request"
  "roborex/StartSystemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartSystem-request>)))
  "Returns md5sum for a message object of type '<StartSystem-request>"
  "fef68d53bc3842fbc6d3b74baf134cd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartSystem-request)))
  "Returns md5sum for a message object of type 'StartSystem-request"
  "fef68d53bc3842fbc6d3b74baf134cd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartSystem-request>)))
  "Returns full string definition for message of type '<StartSystem-request>"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartSystem-request)))
  "Returns full string definition for message of type 'StartSystem-request"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartSystem-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartSystem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartSystem-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude StartSystem-response.msg.html

(cl:defclass <StartSystem-response> (roslisp-msg-protocol:ros-message)
  ((succeeded
    :reader succeeded
    :initarg :succeeded
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartSystem-response (<StartSystem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartSystem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartSystem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<StartSystem-response> is deprecated: use roborex-srv:StartSystem-response instead.")))

(cl:ensure-generic-function 'succeeded-val :lambda-list '(m))
(cl:defmethod succeeded-val ((m <StartSystem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:succeeded-val is deprecated.  Use roborex-srv:succeeded instead.")
  (succeeded m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartSystem-response>) ostream)
  "Serializes a message object of type '<StartSystem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeeded) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartSystem-response>) istream)
  "Deserializes a message object of type '<StartSystem-response>"
    (cl:setf (cl:slot-value msg 'succeeded) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartSystem-response>)))
  "Returns string type for a service object of type '<StartSystem-response>"
  "roborex/StartSystemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartSystem-response)))
  "Returns string type for a service object of type 'StartSystem-response"
  "roborex/StartSystemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartSystem-response>)))
  "Returns md5sum for a message object of type '<StartSystem-response>"
  "fef68d53bc3842fbc6d3b74baf134cd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartSystem-response)))
  "Returns md5sum for a message object of type 'StartSystem-response"
  "fef68d53bc3842fbc6d3b74baf134cd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartSystem-response>)))
  "Returns full string definition for message of type '<StartSystem-response>"
  (cl:format cl:nil "bool succeeded~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartSystem-response)))
  "Returns full string definition for message of type 'StartSystem-response"
  (cl:format cl:nil "bool succeeded~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartSystem-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartSystem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartSystem-response
    (cl:cons ':succeeded (succeeded msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartSystem)))
  'StartSystem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartSystem)))
  'StartSystem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartSystem)))
  "Returns string type for a service object of type '<StartSystem>"
  "roborex/StartSystem")