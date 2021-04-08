; Auto-generated. Do not edit!


(cl:in-package roborex-msg)


;//! \htmlinclude ArmPose.msg.html

(cl:defclass <ArmPose> (roslisp-msg-protocol:ros-message)
  ((world_joint
    :reader world_joint
    :initarg :world_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (base_joint
    :reader base_joint
    :initarg :base_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (shoulder_joint
    :reader shoulder_joint
    :initarg :shoulder_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (elbow_joint
    :reader elbow_joint
    :initarg :elbow_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (wrist_joint
    :reader wrist_joint
    :initarg :wrist_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (eff_joint
    :reader eff_joint
    :initarg :eff_joint
    :type roborex-msg:JointState
    :initform (cl:make-instance 'roborex-msg:JointState))
   (right_gripper_joint
    :reader right_gripper_joint
    :initarg :right_gripper_joint
    :type cl:boolean
    :initform cl:nil)
   (left_gripper_joint
    :reader left_gripper_joint
    :initarg :left_gripper_joint
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmPose (<ArmPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborex-msg:<ArmPose> is deprecated: use roborex-msg:ArmPose instead.")))

(cl:ensure-generic-function 'world_joint-val :lambda-list '(m))
(cl:defmethod world_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:world_joint-val is deprecated.  Use roborex-msg:world_joint instead.")
  (world_joint m))

(cl:ensure-generic-function 'base_joint-val :lambda-list '(m))
(cl:defmethod base_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:base_joint-val is deprecated.  Use roborex-msg:base_joint instead.")
  (base_joint m))

(cl:ensure-generic-function 'shoulder_joint-val :lambda-list '(m))
(cl:defmethod shoulder_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:shoulder_joint-val is deprecated.  Use roborex-msg:shoulder_joint instead.")
  (shoulder_joint m))

(cl:ensure-generic-function 'elbow_joint-val :lambda-list '(m))
(cl:defmethod elbow_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:elbow_joint-val is deprecated.  Use roborex-msg:elbow_joint instead.")
  (elbow_joint m))

(cl:ensure-generic-function 'wrist_joint-val :lambda-list '(m))
(cl:defmethod wrist_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:wrist_joint-val is deprecated.  Use roborex-msg:wrist_joint instead.")
  (wrist_joint m))

(cl:ensure-generic-function 'eff_joint-val :lambda-list '(m))
(cl:defmethod eff_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:eff_joint-val is deprecated.  Use roborex-msg:eff_joint instead.")
  (eff_joint m))

(cl:ensure-generic-function 'right_gripper_joint-val :lambda-list '(m))
(cl:defmethod right_gripper_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:right_gripper_joint-val is deprecated.  Use roborex-msg:right_gripper_joint instead.")
  (right_gripper_joint m))

(cl:ensure-generic-function 'left_gripper_joint-val :lambda-list '(m))
(cl:defmethod left_gripper_joint-val ((m <ArmPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborex-msg:left_gripper_joint-val is deprecated.  Use roborex-msg:left_gripper_joint instead.")
  (left_gripper_joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmPose>) ostream)
  "Serializes a message object of type '<ArmPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shoulder_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elbow_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrist_joint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eff_joint) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_gripper_joint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_gripper_joint) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmPose>) istream)
  "Deserializes a message object of type '<ArmPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shoulder_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elbow_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrist_joint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eff_joint) istream)
    (cl:setf (cl:slot-value msg 'right_gripper_joint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_gripper_joint) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmPose>)))
  "Returns string type for a message object of type '<ArmPose>"
  "roborex/ArmPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmPose)))
  "Returns string type for a message object of type 'ArmPose"
  "roborex/ArmPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmPose>)))
  "Returns md5sum for a message object of type '<ArmPose>"
  "55be2a66674559ab0f6efa20a2ea72ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmPose)))
  "Returns md5sum for a message object of type 'ArmPose"
  "55be2a66674559ab0f6efa20a2ea72ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmPose>)))
  "Returns full string definition for message of type '<ArmPose>"
  (cl:format cl:nil "JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%bool right_gripper_joint~%bool left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmPose)))
  "Returns full string definition for message of type 'ArmPose"
  (cl:format cl:nil "JointState world_joint~%JointState base_joint~%JointState shoulder_joint~%JointState elbow_joint~%JointState wrist_joint~%JointState eff_joint~%bool right_gripper_joint~%bool left_gripper_joint~%================================================================================~%MSG: roborex/JointState~%geometry_msgs/Point translation~%float32 angle~%float32 upper_bound~%float32 lower_bound~%int32 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shoulder_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elbow_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrist_joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eff_joint))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmPose>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmPose
    (cl:cons ':world_joint (world_joint msg))
    (cl:cons ':base_joint (base_joint msg))
    (cl:cons ':shoulder_joint (shoulder_joint msg))
    (cl:cons ':elbow_joint (elbow_joint msg))
    (cl:cons ':wrist_joint (wrist_joint msg))
    (cl:cons ':eff_joint (eff_joint msg))
    (cl:cons ':right_gripper_joint (right_gripper_joint msg))
    (cl:cons ':left_gripper_joint (left_gripper_joint msg))
))
