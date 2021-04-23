;; Auto-generated. Do not edit!


(when (boundp 'roborex::ArmPose)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'ArmPose (find-package "ROBOREX")))
(unless (find-package "ROBOREX::ARMPOSE")
  (make-package "ROBOREX::ARMPOSE"))

(in-package "ROS")
;;//! \htmlinclude ArmPose.msg.html


(defclass roborex::ArmPose
  :super ros::object
  :slots (_world_joint _base_joint _shoulder_joint _elbow_joint _wrist_joint _eff_joint _gripper_offset_joint _right_gripper_joint _left_gripper_joint ))

(defmethod roborex::ArmPose
  (:init
   (&key
    ((:world_joint __world_joint) (instance roborex::JointState :init))
    ((:base_joint __base_joint) (instance roborex::JointState :init))
    ((:shoulder_joint __shoulder_joint) (instance roborex::JointState :init))
    ((:elbow_joint __elbow_joint) (instance roborex::JointState :init))
    ((:wrist_joint __wrist_joint) (instance roborex::JointState :init))
    ((:eff_joint __eff_joint) (instance roborex::JointState :init))
    ((:gripper_offset_joint __gripper_offset_joint) (instance roborex::JointState :init))
    ((:right_gripper_joint __right_gripper_joint) (instance roborex::JointState :init))
    ((:left_gripper_joint __left_gripper_joint) (instance roborex::JointState :init))
    )
   (send-super :init)
   (setq _world_joint __world_joint)
   (setq _base_joint __base_joint)
   (setq _shoulder_joint __shoulder_joint)
   (setq _elbow_joint __elbow_joint)
   (setq _wrist_joint __wrist_joint)
   (setq _eff_joint __eff_joint)
   (setq _gripper_offset_joint __gripper_offset_joint)
   (setq _right_gripper_joint __right_gripper_joint)
   (setq _left_gripper_joint __left_gripper_joint)
   self)
  (:world_joint
   (&rest __world_joint)
   (if (keywordp (car __world_joint))
       (send* _world_joint __world_joint)
     (progn
       (if __world_joint (setq _world_joint (car __world_joint)))
       _world_joint)))
  (:base_joint
   (&rest __base_joint)
   (if (keywordp (car __base_joint))
       (send* _base_joint __base_joint)
     (progn
       (if __base_joint (setq _base_joint (car __base_joint)))
       _base_joint)))
  (:shoulder_joint
   (&rest __shoulder_joint)
   (if (keywordp (car __shoulder_joint))
       (send* _shoulder_joint __shoulder_joint)
     (progn
       (if __shoulder_joint (setq _shoulder_joint (car __shoulder_joint)))
       _shoulder_joint)))
  (:elbow_joint
   (&rest __elbow_joint)
   (if (keywordp (car __elbow_joint))
       (send* _elbow_joint __elbow_joint)
     (progn
       (if __elbow_joint (setq _elbow_joint (car __elbow_joint)))
       _elbow_joint)))
  (:wrist_joint
   (&rest __wrist_joint)
   (if (keywordp (car __wrist_joint))
       (send* _wrist_joint __wrist_joint)
     (progn
       (if __wrist_joint (setq _wrist_joint (car __wrist_joint)))
       _wrist_joint)))
  (:eff_joint
   (&rest __eff_joint)
   (if (keywordp (car __eff_joint))
       (send* _eff_joint __eff_joint)
     (progn
       (if __eff_joint (setq _eff_joint (car __eff_joint)))
       _eff_joint)))
  (:gripper_offset_joint
   (&rest __gripper_offset_joint)
   (if (keywordp (car __gripper_offset_joint))
       (send* _gripper_offset_joint __gripper_offset_joint)
     (progn
       (if __gripper_offset_joint (setq _gripper_offset_joint (car __gripper_offset_joint)))
       _gripper_offset_joint)))
  (:right_gripper_joint
   (&rest __right_gripper_joint)
   (if (keywordp (car __right_gripper_joint))
       (send* _right_gripper_joint __right_gripper_joint)
     (progn
       (if __right_gripper_joint (setq _right_gripper_joint (car __right_gripper_joint)))
       _right_gripper_joint)))
  (:left_gripper_joint
   (&rest __left_gripper_joint)
   (if (keywordp (car __left_gripper_joint))
       (send* _left_gripper_joint __left_gripper_joint)
     (progn
       (if __left_gripper_joint (setq _left_gripper_joint (car __left_gripper_joint)))
       _left_gripper_joint)))
  (:serialization-length
   ()
   (+
    ;; roborex/JointState _world_joint
    (send _world_joint :serialization-length)
    ;; roborex/JointState _base_joint
    (send _base_joint :serialization-length)
    ;; roborex/JointState _shoulder_joint
    (send _shoulder_joint :serialization-length)
    ;; roborex/JointState _elbow_joint
    (send _elbow_joint :serialization-length)
    ;; roborex/JointState _wrist_joint
    (send _wrist_joint :serialization-length)
    ;; roborex/JointState _eff_joint
    (send _eff_joint :serialization-length)
    ;; roborex/JointState _gripper_offset_joint
    (send _gripper_offset_joint :serialization-length)
    ;; roborex/JointState _right_gripper_joint
    (send _right_gripper_joint :serialization-length)
    ;; roborex/JointState _left_gripper_joint
    (send _left_gripper_joint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/JointState _world_joint
       (send _world_joint :serialize s)
     ;; roborex/JointState _base_joint
       (send _base_joint :serialize s)
     ;; roborex/JointState _shoulder_joint
       (send _shoulder_joint :serialize s)
     ;; roborex/JointState _elbow_joint
       (send _elbow_joint :serialize s)
     ;; roborex/JointState _wrist_joint
       (send _wrist_joint :serialize s)
     ;; roborex/JointState _eff_joint
       (send _eff_joint :serialize s)
     ;; roborex/JointState _gripper_offset_joint
       (send _gripper_offset_joint :serialize s)
     ;; roborex/JointState _right_gripper_joint
       (send _right_gripper_joint :serialize s)
     ;; roborex/JointState _left_gripper_joint
       (send _left_gripper_joint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/JointState _world_joint
     (send _world_joint :deserialize buf ptr-) (incf ptr- (send _world_joint :serialization-length))
   ;; roborex/JointState _base_joint
     (send _base_joint :deserialize buf ptr-) (incf ptr- (send _base_joint :serialization-length))
   ;; roborex/JointState _shoulder_joint
     (send _shoulder_joint :deserialize buf ptr-) (incf ptr- (send _shoulder_joint :serialization-length))
   ;; roborex/JointState _elbow_joint
     (send _elbow_joint :deserialize buf ptr-) (incf ptr- (send _elbow_joint :serialization-length))
   ;; roborex/JointState _wrist_joint
     (send _wrist_joint :deserialize buf ptr-) (incf ptr- (send _wrist_joint :serialization-length))
   ;; roborex/JointState _eff_joint
     (send _eff_joint :deserialize buf ptr-) (incf ptr- (send _eff_joint :serialization-length))
   ;; roborex/JointState _gripper_offset_joint
     (send _gripper_offset_joint :deserialize buf ptr-) (incf ptr- (send _gripper_offset_joint :serialization-length))
   ;; roborex/JointState _right_gripper_joint
     (send _right_gripper_joint :deserialize buf ptr-) (incf ptr- (send _right_gripper_joint :serialization-length))
   ;; roborex/JointState _left_gripper_joint
     (send _left_gripper_joint :deserialize buf ptr-) (incf ptr- (send _left_gripper_joint :serialization-length))
   ;;
   self)
  )

(setf (get roborex::ArmPose :md5sum-) "a5e1af2ff95ce9860148ff20620f2dd0")
(setf (get roborex::ArmPose :datatype-) "roborex/ArmPose")
(setf (get roborex::ArmPose :definition-)
      "JointState world_joint
JointState base_joint
JointState shoulder_joint
JointState elbow_joint
JointState wrist_joint
JointState eff_joint
JointState gripper_offset_joint
JointState right_gripper_joint
JointState left_gripper_joint
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



(provide :roborex/ArmPose "a5e1af2ff95ce9860148ff20620f2dd0")


