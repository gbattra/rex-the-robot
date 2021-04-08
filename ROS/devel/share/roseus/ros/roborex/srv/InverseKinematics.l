;; Auto-generated. Do not edit!


(when (boundp 'roborex::InverseKinematics)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'InverseKinematics (find-package "ROBOREX")))
(unless (find-package "ROBOREX::INVERSEKINEMATICS")
  (make-package "ROBOREX::INVERSEKINEMATICS"))
(unless (find-package "ROBOREX::INVERSEKINEMATICSREQUEST")
  (make-package "ROBOREX::INVERSEKINEMATICSREQUEST"))
(unless (find-package "ROBOREX::INVERSEKINEMATICSRESPONSE")
  (make-package "ROBOREX::INVERSEKINEMATICSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roborex::InverseKinematicsRequest
  :super ros::object
  :slots (_init_arm_pose _wrist_target _eff_target ))

(defmethod roborex::InverseKinematicsRequest
  (:init
   (&key
    ((:init_arm_pose __init_arm_pose) (instance roborex::ArmPose :init))
    ((:wrist_target __wrist_target) (instance geometry_msgs::Pose :init))
    ((:eff_target __eff_target) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _init_arm_pose __init_arm_pose)
   (setq _wrist_target __wrist_target)
   (setq _eff_target __eff_target)
   self)
  (:init_arm_pose
   (&rest __init_arm_pose)
   (if (keywordp (car __init_arm_pose))
       (send* _init_arm_pose __init_arm_pose)
     (progn
       (if __init_arm_pose (setq _init_arm_pose (car __init_arm_pose)))
       _init_arm_pose)))
  (:wrist_target
   (&rest __wrist_target)
   (if (keywordp (car __wrist_target))
       (send* _wrist_target __wrist_target)
     (progn
       (if __wrist_target (setq _wrist_target (car __wrist_target)))
       _wrist_target)))
  (:eff_target
   (&rest __eff_target)
   (if (keywordp (car __eff_target))
       (send* _eff_target __eff_target)
     (progn
       (if __eff_target (setq _eff_target (car __eff_target)))
       _eff_target)))
  (:serialization-length
   ()
   (+
    ;; roborex/ArmPose _init_arm_pose
    (send _init_arm_pose :serialization-length)
    ;; geometry_msgs/Pose _wrist_target
    (send _wrist_target :serialization-length)
    ;; geometry_msgs/Pose _eff_target
    (send _eff_target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/ArmPose _init_arm_pose
       (send _init_arm_pose :serialize s)
     ;; geometry_msgs/Pose _wrist_target
       (send _wrist_target :serialize s)
     ;; geometry_msgs/Pose _eff_target
       (send _eff_target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/ArmPose _init_arm_pose
     (send _init_arm_pose :deserialize buf ptr-) (incf ptr- (send _init_arm_pose :serialization-length))
   ;; geometry_msgs/Pose _wrist_target
     (send _wrist_target :deserialize buf ptr-) (incf ptr- (send _wrist_target :serialization-length))
   ;; geometry_msgs/Pose _eff_target
     (send _eff_target :deserialize buf ptr-) (incf ptr- (send _eff_target :serialization-length))
   ;;
   self)
  )

(defclass roborex::InverseKinematicsResponse
  :super ros::object
  :slots (_arm_pose ))

(defmethod roborex::InverseKinematicsResponse
  (:init
   (&key
    ((:arm_pose __arm_pose) (instance roborex::ArmPose :init))
    )
   (send-super :init)
   (setq _arm_pose __arm_pose)
   self)
  (:arm_pose
   (&rest __arm_pose)
   (if (keywordp (car __arm_pose))
       (send* _arm_pose __arm_pose)
     (progn
       (if __arm_pose (setq _arm_pose (car __arm_pose)))
       _arm_pose)))
  (:serialization-length
   ()
   (+
    ;; roborex/ArmPose _arm_pose
    (send _arm_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/ArmPose _arm_pose
       (send _arm_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/ArmPose _arm_pose
     (send _arm_pose :deserialize buf ptr-) (incf ptr- (send _arm_pose :serialization-length))
   ;;
   self)
  )

(defclass roborex::InverseKinematics
  :super ros::object
  :slots ())

(setf (get roborex::InverseKinematics :md5sum-) "a5747170d3fd6b372503a24bb90131c0")
(setf (get roborex::InverseKinematics :datatype-) "roborex/InverseKinematics")
(setf (get roborex::InverseKinematics :request) roborex::InverseKinematicsRequest)
(setf (get roborex::InverseKinematics :response) roborex::InverseKinematicsResponse)

(defmethod roborex::InverseKinematicsRequest
  (:response () (instance roborex::InverseKinematicsResponse :init)))

(setf (get roborex::InverseKinematicsRequest :md5sum-) "a5747170d3fd6b372503a24bb90131c0")
(setf (get roborex::InverseKinematicsRequest :datatype-) "roborex/InverseKinematicsRequest")
(setf (get roborex::InverseKinematicsRequest :definition-)
      "ArmPose init_arm_pose
geometry_msgs/Pose wrist_target
geometry_msgs/Pose eff_target

================================================================================
MSG: roborex/ArmPose
JointState world_joint
JointState base_joint
JointState shoulder_joint
JointState elbow_joint
JointState wrist_joint
JointState eff_joint
bool right_gripper_joint
bool left_gripper_joint
================================================================================
MSG: roborex/JointState
geometry_msgs/Point translation
float32 angle
float32 upper_bound
float32 lower_bound
int32 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
ArmPose arm_pose

================================================================================
MSG: roborex/ArmPose
JointState world_joint
JointState base_joint
JointState shoulder_joint
JointState elbow_joint
JointState wrist_joint
JointState eff_joint
bool right_gripper_joint
bool left_gripper_joint
================================================================================
MSG: roborex/JointState
geometry_msgs/Point translation
float32 angle
float32 upper_bound
float32 lower_bound
int32 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get roborex::InverseKinematicsResponse :md5sum-) "a5747170d3fd6b372503a24bb90131c0")
(setf (get roborex::InverseKinematicsResponse :datatype-) "roborex/InverseKinematicsResponse")
(setf (get roborex::InverseKinematicsResponse :definition-)
      "ArmPose init_arm_pose
geometry_msgs/Pose wrist_target
geometry_msgs/Pose eff_target

================================================================================
MSG: roborex/ArmPose
JointState world_joint
JointState base_joint
JointState shoulder_joint
JointState elbow_joint
JointState wrist_joint
JointState eff_joint
bool right_gripper_joint
bool left_gripper_joint
================================================================================
MSG: roborex/JointState
geometry_msgs/Point translation
float32 angle
float32 upper_bound
float32 lower_bound
int32 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
ArmPose arm_pose

================================================================================
MSG: roborex/ArmPose
JointState world_joint
JointState base_joint
JointState shoulder_joint
JointState elbow_joint
JointState wrist_joint
JointState eff_joint
bool right_gripper_joint
bool left_gripper_joint
================================================================================
MSG: roborex/JointState
geometry_msgs/Point translation
float32 angle
float32 upper_bound
float32 lower_bound
int32 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :roborex/InverseKinematics "a5747170d3fd6b372503a24bb90131c0")


