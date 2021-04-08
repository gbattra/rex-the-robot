; Auto-generated. Do not edit!


(cl:in-package roborex-srv)


;//! \htmlinclude ForwardKinematics-request.msg.html

(cl:defclass <ForwardKinematics-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector roborex-msg:JointState)
   :initform (cl:make-array 0 :element-type 'roborex-msg:JointState :initial-element (cl:make-instance 'roborex-msg:JointState))))
)

(cl:defclass ForwardKinematics-request (<ForwardKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<ForwardKinematics-request> is deprecated: use roborex-srv:ForwardKinematics-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <ForwardKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:joints-val is deprecated.  Use roborex-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-request>) ostream)
  "Serializes a message object of type '<ForwardKinematics-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-request>) istream)
  "Deserializes a message object of type '<ForwardKinematics-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roborex-msg:JointState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-request>)))
  "Returns string type for a service object of type '<ForwardKinematics-request>"
  "roborex/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-request)))
  "Returns string type for a service object of type 'ForwardKinematics-request"
  "roborex/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-request>"
  "f0117f65ce6a9862c9734b997e4a7382")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-request)))
  "Returns md5sum for a message object of type 'ForwardKinematics-request"
  "f0117f65ce6a9862c9734b997e4a7382")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns full string definition for message of type '<ForwardKinematics-request>"
  (cl:format cl:nil "JointState[] joints~%~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-request)))
  "Returns full string definition for message of type 'ForwardKinematics-request"
  (cl:format cl:nil "JointState[] joints~%~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-request
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude ForwardKinematics-response.msg.html

(cl:defclass <ForwardKinematics-response> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ForwardKinematics-response (<ForwardKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<ForwardKinematics-response> is deprecated: use roborex-srv:ForwardKinematics-response instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <ForwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:target-val is deprecated.  Use roborex-srv:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-response>) ostream)
  "Serializes a message object of type '<ForwardKinematics-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-response>) istream)
  "Deserializes a message object of type '<ForwardKinematics-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-response>)))
  "Returns string type for a service object of type '<ForwardKinematics-response>"
  "roborex/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-response)))
  "Returns string type for a service object of type 'ForwardKinematics-response"
  "roborex/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-response>"
  "f0117f65ce6a9862c9734b997e4a7382")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-response)))
  "Returns md5sum for a message object of type 'ForwardKinematics-response"
  "f0117f65ce6a9862c9734b997e4a7382")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns full string definition for message of type '<ForwardKinematics-response>"
  (cl:format cl:nil "geometry_msgs/Pose target~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-response)))
  "Returns full string definition for message of type 'ForwardKinematics-response"
  (cl:format cl:nil "geometry_msgs/Pose target~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-response
    (cl:cons ':target (target msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics)))
  "Returns string type for a service object of type '<ForwardKinematics>"
  "roborex/ForwardKinematics")