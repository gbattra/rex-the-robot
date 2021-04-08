; Auto-generated. Do not edit!


(cl:in-package niryo_moveit-msg)


;//! \htmlinclude NiryoMoveitJoints.msg.html

(cl:defclass <NiryoMoveitJoints> (roslisp-msg-protocol:ros-message)
  ((joint_00
    :reader joint_00
    :initarg :joint_00
    :type cl:float
    :initform 0.0)
   (joint_01
    :reader joint_01
    :initarg :joint_01
    :type cl:float
    :initform 0.0)
   (joint_02
    :reader joint_02
    :initarg :joint_02
    :type cl:float
    :initform 0.0)
   (joint_03
    :reader joint_03
    :initarg :joint_03
    :type cl:float
    :initform 0.0)
   (joint_04
    :reader joint_04
    :initarg :joint_04
    :type cl:float
    :initform 0.0)
   (joint_05
    :reader joint_05
    :initarg :joint_05
    :type cl:float
    :initform 0.0)
   (pick_pose
    :reader pick_pose
    :initarg :pick_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (place_pose
    :reader place_pose
    :initarg :place_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass NiryoMoveitJoints (<NiryoMoveitJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NiryoMoveitJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NiryoMoveitJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_moveit-msg:<NiryoMoveitJoints> is deprecated: use niryo_moveit-msg:NiryoMoveitJoints instead.")))

(cl:ensure-generic-function 'joint_00-val :lambda-list '(m))
(cl:defmethod joint_00-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_00-val is deprecated.  Use niryo_moveit-msg:joint_00 instead.")
  (joint_00 m))

(cl:ensure-generic-function 'joint_01-val :lambda-list '(m))
(cl:defmethod joint_01-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_01-val is deprecated.  Use niryo_moveit-msg:joint_01 instead.")
  (joint_01 m))

(cl:ensure-generic-function 'joint_02-val :lambda-list '(m))
(cl:defmethod joint_02-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_02-val is deprecated.  Use niryo_moveit-msg:joint_02 instead.")
  (joint_02 m))

(cl:ensure-generic-function 'joint_03-val :lambda-list '(m))
(cl:defmethod joint_03-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_03-val is deprecated.  Use niryo_moveit-msg:joint_03 instead.")
  (joint_03 m))

(cl:ensure-generic-function 'joint_04-val :lambda-list '(m))
(cl:defmethod joint_04-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_04-val is deprecated.  Use niryo_moveit-msg:joint_04 instead.")
  (joint_04 m))

(cl:ensure-generic-function 'joint_05-val :lambda-list '(m))
(cl:defmethod joint_05-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:joint_05-val is deprecated.  Use niryo_moveit-msg:joint_05 instead.")
  (joint_05 m))

(cl:ensure-generic-function 'pick_pose-val :lambda-list '(m))
(cl:defmethod pick_pose-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:pick_pose-val is deprecated.  Use niryo_moveit-msg:pick_pose instead.")
  (pick_pose m))

(cl:ensure-generic-function 'place_pose-val :lambda-list '(m))
(cl:defmethod place_pose-val ((m <NiryoMoveitJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_moveit-msg:place_pose-val is deprecated.  Use niryo_moveit-msg:place_pose instead.")
  (place_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NiryoMoveitJoints>) ostream)
  "Serializes a message object of type '<NiryoMoveitJoints>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_00))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_01))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_02))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_03))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_04))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_05))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NiryoMoveitJoints>) istream)
  "Deserializes a message object of type '<NiryoMoveitJoints>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_00) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_01) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_02) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_03) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_04) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_05) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NiryoMoveitJoints>)))
  "Returns string type for a message object of type '<NiryoMoveitJoints>"
  "niryo_moveit/NiryoMoveitJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NiryoMoveitJoints)))
  "Returns string type for a message object of type 'NiryoMoveitJoints"
  "niryo_moveit/NiryoMoveitJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NiryoMoveitJoints>)))
  "Returns md5sum for a message object of type '<NiryoMoveitJoints>"
  "eb9a754ca01417c49ae5e00219146bda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NiryoMoveitJoints)))
  "Returns md5sum for a message object of type 'NiryoMoveitJoints"
  "eb9a754ca01417c49ae5e00219146bda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NiryoMoveitJoints>)))
  "Returns full string definition for message of type '<NiryoMoveitJoints>"
  (cl:format cl:nil "float64 joint_00~%float64 joint_01~%float64 joint_02~%float64 joint_03~%float64 joint_04~%float64 joint_05~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NiryoMoveitJoints)))
  "Returns full string definition for message of type 'NiryoMoveitJoints"
  (cl:format cl:nil "float64 joint_00~%float64 joint_01~%float64 joint_02~%float64 joint_03~%float64 joint_04~%float64 joint_05~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NiryoMoveitJoints>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NiryoMoveitJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'NiryoMoveitJoints
    (cl:cons ':joint_00 (joint_00 msg))
    (cl:cons ':joint_01 (joint_01 msg))
    (cl:cons ':joint_02 (joint_02 msg))
    (cl:cons ':joint_03 (joint_03 msg))
    (cl:cons ':joint_04 (joint_04 msg))
    (cl:cons ':joint_05 (joint_05 msg))
    (cl:cons ':pick_pose (pick_pose msg))
    (cl:cons ':place_pose (place_pose msg))
))
