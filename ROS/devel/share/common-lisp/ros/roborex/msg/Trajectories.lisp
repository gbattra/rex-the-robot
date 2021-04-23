; Auto-generated. Do not edit!


(cl:in-package roborex-msg)


;//! \htmlinclude Trajectories.msg.html

(cl:defclass <Trajectories> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector roborex-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'roborex-msg:Trajectory :initial-element (cl:make-instance 'roborex-msg:Trajectory))))
)

(cl:defclass Trajectories (<Trajectories>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectories>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectories)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-msg:<Trajectories> is deprecated: use roborex-msg:Trajectories instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <Trajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:trajectories-val is deprecated.  Use roborex-msg:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectories>) ostream)
  "Serializes a message object of type '<Trajectories>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectories>) istream)
  "Deserializes a message object of type '<Trajectories>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectories>)))
  "Returns string type for a message object of type '<Trajectories>"
  "roborex/Trajectories")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectories)))
  "Returns string type for a message object of type 'Trajectories"
  "roborex/Trajectories")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectories>)))
  "Returns md5sum for a message object of type '<Trajectories>"
  "8815e9c3c7e5428d6d83e942eb0b7216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectories)))
  "Returns md5sum for a message object of type 'Trajectories"
  "8815e9c3c7e5428d6d83e942eb0b7216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectories>)))
  "Returns full string definition for message of type '<Trajectories>"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roborex/Trajectory~%ArmPose[] poses~%int32 id~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectories)))
  "Returns full string definition for message of type 'Trajectories"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roborex/Trajectory~%ArmPose[] poses~%int32 id~%~%================================================================================~%MSG: roborex/ArmPose~%JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%JointState gripper_offset_joint~%JointState right_gripper_joint~%JointState left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectories>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectories>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectories
    (cl:cons ':trajectories (trajectories msg))
))
