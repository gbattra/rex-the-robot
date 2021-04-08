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
  :slots (_world_joint _base_joint _shoulder_joint _elbow_joint _wrist_joint _eff_joint _right_gripper_joint _left_gripper_joint ))

(defmethod roborex::ArmPose
  (:init
   (&key
    ((:world_joint __world_joint) (instance roborex::JointState :init))
    ((:base_joint __base_joint) (instance roborex::JointState :init))
    ((:shoulder_joint __shoulder_joint) (instance roborex::JointState :init))
    ((:elbow_joint __elbow_joint) (instance roborex::JointState :init))
    ((:wrist_joint __wrist_joint) (instance roborex::JointState :init))
    ((:eff_joint __eff_joint) (instance roborex::JointState :init))
    ((:right_gripper_joint __right_gripper_joint) nil)
    ((:left_gripper_joint __left_gripper_joint) nil)
    )
   (send-super :init)
   (setq _world_joint __world_joint)
   (setq _base_joint __base_joint)
   (setq _shoulder_joint __shoulder_joint)
   (setq _elbow_joint __elbow_joint)
   (setq _wrist_joint __wrist_joint)
   (setq _eff_joint __eff_joint)
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
  (:right_gripper_joint
   (&optional (__right_gripper_joint :null))
   (if (not (eq __right_gripper_joint :null)) (setq _right_gripper_joint __right_gripper_joint)) _right_gripper_joint)
  (:left_gripper_joint
   (&optional (__left_gripper_joint :null))
   (if (not (eq __left_gripper_joint :null)) (setq _left_gripper_joint __left_gripper_joint)) _left_gripper_joint)
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
    ;; bool _right_gripper_joint
    1
    ;; bool _left_gripper_joint
    1
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
     ;; bool _right_gripper_joint
       (if _right_gripper_joint (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_gripper_joint
       (if _left_gripper_joint (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _right_gripper_joint
     (setq _right_gripper_joint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_gripper_joint
     (setq _left_gripper_joint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborex::ArmPose :md5sum-) "55be2a66674559ab0f6efa20a2ea72ed")
(setf (get roborex::ArmPose :datatype-) "roborex/ArmPose")
(setf (get roborex::ArmPose :definition-)
      "JointState world_joint
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



(provide :roborex/ArmPose "55be2a66674559ab0f6efa20a2ea72ed")


