; Auto-generated. Do not edit!


(cl:in-package roborex-srv)


;//! \htmlinclude TrajectoryPlanner-request.msg.html

(cl:defclass <TrajectoryPlanner-request> (roslisp-msg-protocol:ros-message)
  ((arm_pose
    :reader arm_pose
    :initarg :arm_pose
    :type roborex-msg:ArmPose
    :initform (cl:make-instance 'roborex-msg:ArmPose))
   (target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (grasp_trajectory
    :reader grasp_trajectory
    :initarg :grasp_trajectory
    :type cl:boolean
    :initform cl:nil)
   (release_trajectory
    :reader release_trajectory
    :initarg :release_trajectory
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrajectoryPlanner-request (<TrajectoryPlanner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPlanner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPlanner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<TrajectoryPlanner-request> is deprecated: use roborex-srv:TrajectoryPlanner-request instead.")))

(cl:ensure-generic-function 'arm_pose-val :lambda-list '(m))
(cl:defmethod arm_pose-val ((m <TrajectoryPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:arm_pose-val is deprecated.  Use roborex-srv:arm_pose instead.")
  (arm_pose m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <TrajectoryPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:target-val is deprecated.  Use roborex-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'grasp_trajectory-val :lambda-list '(m))
(cl:defmethod grasp_trajectory-val ((m <TrajectoryPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:grasp_trajectory-val is deprecated.  Use roborex-srv:grasp_trajectory instead.")
  (grasp_trajectory m))

(cl:ensure-generic-function 'release_trajectory-val :lambda-list '(m))
(cl:defmethod release_trajectory-val ((m <TrajectoryPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:release_trajectory-val is deprecated.  Use roborex-srv:release_trajectory instead.")
  (release_trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPlanner-request>) ostream)
  "Serializes a message object of type '<TrajectoryPlanner-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'grasp_trajectory) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'release_trajectory) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPlanner-request>) istream)
  "Deserializes a message object of type '<TrajectoryPlanner-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
    (cl:setf (cl:slot-value msg 'grasp_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'release_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPlanner-request>)))
  "Returns string type for a service object of type '<TrajectoryPlanner-request>"
  "roborex/TrajectoryPlannerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPlanner-request)))
  "Returns string type for a service object of type 'TrajectoryPlanner-request"
  "roborex/TrajectoryPlannerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPlanner-request>)))
  "Returns md5sum for a message object of type '<TrajectoryPlanner-request>"
  "367c998270ed8c4c22d2346f6cade297")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPlanner-request)))
  "Returns md5sum for a message object of type 'TrajectoryPlanner-request"
  "367c998270ed8c4c22d2346f6cade297")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPlanner-request>)))
  "Returns full string definition for message of type '<TrajectoryPlanner-request>"
  (cl:format cl:nil "ArmPose arm_pose~%geometry_msgs/Pose target~%bool grasp_trajectory~%bool release_trajectory~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPlanner-request)))
  "Returns full string definition for message of type 'TrajectoryPlanner-request"
  (cl:format cl:nil "ArmPose arm_pose~%geometry_msgs/Pose target~%bool grasp_trajectory~%bool release_trajectory~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPlanner-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPlanner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPlanner-request
    (cl:cons ':arm_pose (arm_pose msg))
    (cl:cons ':target (target msg))
    (cl:cons ':grasp_trajectory (grasp_trajectory msg))
    (cl:cons ':release_trajectory (release_trajectory msg))
))
;//! \htmlinclude TrajectoryPlanner-response.msg.html

(cl:defclass <TrajectoryPlanner-response> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector roborex-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'roborex-msg:Trajectory :initial-element (cl:make-instance 'roborex-msg:Trajectory))))
)

(cl:defclass TrajectoryPlanner-response (<TrajectoryPlanner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPlanner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPlanner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-srv:<TrajectoryPlanner-response> is deprecated: use roborex-srv:TrajectoryPlanner-response instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <TrajectoryPlanner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-srv:trajectories-val is deprecated.  Use roborex-srv:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPlanner-response>) ostream)
  "Serializes a message object of type '<TrajectoryPlanner-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPlanner-response>) istream)
  "Deserializes a message object of type '<TrajectoryPlanner-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roborex-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPlanner-response>)))
  "Returns string type for a service object of type '<TrajectoryPlanner-response>"
  "roborex/TrajectoryPlannerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPlanner-response)))
  "Returns string type for a service object of type 'TrajectoryPlanner-response"
  "roborex/TrajectoryPlannerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPlanner-response>)))
  "Returns md5sum for a message object of type '<TrajectoryPlanner-response>"
  "367c998270ed8c4c22d2346f6cade297")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPlanner-response)))
  "Returns md5sum for a message object of type 'TrajectoryPlanner-response"
  "367c998270ed8c4c22d2346f6cade297")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPlanner-response>)))
  "Returns full string definition for message of type '<TrajectoryPlanner-response>"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roborex/Trajectory~%ArmPose[] poses~%int32 id~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPlanner-response)))
  "Returns full string definition for message of type 'TrajectoryPlanner-response"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roborex/Trajectory~%ArmPose[] poses~%int32 id~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPlanner-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPlanner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPlanner-response
    (cl:cons ':trajectories (trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrajectoryPlanner)))
  'TrajectoryPlanner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrajectoryPlanner)))
  'TrajectoryPlanner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPlanner)))
  "Returns string type for a service object of type '<TrajectoryPlanner>"
  "roborex/TrajectoryPlanner")