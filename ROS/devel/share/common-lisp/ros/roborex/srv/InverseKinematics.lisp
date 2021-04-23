; Auto-generated. Do not edit!


(cl:in-package roborex-srv)


;//! \htmlinclude InverseKinematics-request.msg.html

(cl:defclass <InverseKinematics-request> (roslisp-msg-protocol:ros-message)
  ((init_arm_pose
    :reader init_arm_pose
    :initarg :init_arm_pose
    :type roborex-msg:ArmPose
    :initform (cl:make-instance 'roborex-msg:ArmPose))
   (wrist_target
    :reader wrist_target
    :initarg :wrist_target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (eff_target
    :reader eff_target
    :initarg :eff_target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass InverseKinematics-request (<InverseKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InverseKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InverseKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<InverseKinematics-request> is deprecated: use roborex-srv:InverseKinematics-request instead.")))

(cl:ensure-generic-function 'init_arm_pose-val :lambda-list '(m))
(cl:defmethod init_arm_pose-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:init_arm_pose-val is deprecated.  Use roborex-srv:init_arm_pose instead.")
  (init_arm_pose m))

(cl:ensure-generic-function 'wrist_target-val :lambda-list '(m))
(cl:defmethod wrist_target-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:wrist_target-val is deprecated.  Use roborex-srv:wrist_target instead.")
  (wrist_target m))

(cl:ensure-generic-function 'eff_target-val :lambda-list '(m))
(cl:defmethod eff_target-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:eff_target-val is deprecated.  Use roborex-srv:eff_target instead.")
  (eff_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InverseKinematics-request>) ostream)
  "Serializes a message object of type '<InverseKinematics-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_arm_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrist_target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eff_target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InverseKinematics-request>) istream)
  "Deserializes a message object of type '<InverseKinematics-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_arm_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrist_target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eff_target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InverseKinematics-request>)))
  "Returns string type for a service object of type '<InverseKinematics-request>"
  "roborex/InverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics-request)))
  "Returns string type for a service object of type 'InverseKinematics-request"
  "roborex/InverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InverseKinematics-request>)))
  "Returns md5sum for a message object of type '<InverseKinematics-request>"
  "c44e167c0184aca769254292f802c4b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InverseKinematics-request)))
  "Returns md5sum for a message object of type 'InverseKinematics-request"
  "c44e167c0184aca769254292f802c4b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InverseKinematics-request>)))
  "Returns full string definition for message of type '<InverseKinematics-request>"
  (cl:format cl:nil "ArmPose init_arm_pose~%geometry_msgs/Pose wrist_target~%geometry_msgs/Pose eff_target~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InverseKinematics-request)))
  "Returns full string definition for message of type 'InverseKinematics-request"
  (cl:format cl:nil "ArmPose init_arm_pose~%geometry_msgs/Pose wrist_target~%geometry_msgs/Pose eff_target~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InverseKinematics-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_arm_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrist_target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eff_target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InverseKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InverseKinematics-request
    (cl:cons ':init_arm_pose (init_arm_pose msg))
    (cl:cons ':wrist_target (wrist_target msg))
    (cl:cons ':eff_target (eff_target msg))
))
;//! \htmlinclude InverseKinematics-response.msg.html

(cl:defclass <InverseKinematics-response> (roslisp-msg-protocol:ros-message)
  ((arm_pose
    :reader arm_pose
    :initarg :arm_pose
    :type roborex-msg:ArmPose
    :initform (cl:make-instance 'roborex-msg:ArmPose)))
)

(cl:defclass InverseKinematics-response (<InverseKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InverseKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InverseKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<InverseKinematics-response> is deprecated: use roborex-srv:InverseKinematics-response instead.")))

(cl:ensure-generic-function 'arm_pose-val :lambda-list '(m))
(cl:defmethod arm_pose-val ((m <InverseKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:arm_pose-val is deprecated.  Use roborex-srv:arm_pose instead.")
  (arm_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InverseKinematics-response>) ostream)
  "Serializes a message object of type '<InverseKinematics-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InverseKinematics-response>) istream)
  "Deserializes a message object of type '<InverseKinematics-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InverseKinematics-response>)))
  "Returns string type for a service object of type '<InverseKinematics-response>"
  "roborex/InverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics-response)))
  "Returns string type for a service object of type 'InverseKinematics-response"
  "roborex/InverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InverseKinematics-response>)))
  "Returns md5sum for a message object of type '<InverseKinematics-response>"
  "c44e167c0184aca769254292f802c4b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InverseKinematics-response)))
  "Returns md5sum for a message object of type 'InverseKinematics-response"
  "c44e167c0184aca769254292f802c4b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InverseKinematics-response>)))
  "Returns full string definition for message of type '<InverseKinematics-response>"
  (cl:format cl:nil "ArmPose arm_pose~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InverseKinematics-response)))
  "Returns full string definition for message of type 'InverseKinematics-response"
  (cl:format cl:nil "ArmPose arm_pose~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InverseKinematics-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InverseKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InverseKinematics-response
    (cl:cons ':arm_pose (arm_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InverseKinematics)))
  'InverseKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InverseKinematics)))
  'InverseKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics)))
  "Returns string type for a service object of type '<InverseKinematics>"
  "roborex/InverseKinematics")