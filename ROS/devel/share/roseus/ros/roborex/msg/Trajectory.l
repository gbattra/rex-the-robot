;; Auto-generated. Do not edit!


(when (boundp 'roborex::Trajectory)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'Trajectory (find-package "ROBOREX")))
(unless (find-package "ROBOREX::TRAJECTORY")
  (make-package "ROBOREX::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass roborex::Trajectory
  :super ros::object
  :slots (_poses _id ))

(defmethod roborex::Trajectory
  (:init
   (&key
    ((:poses __poses) ())
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _id (round __id))
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; roborex/ArmPose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/ArmPose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/ArmPose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance roborex::ArmPose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roborex::Trajectory :md5sum-) "abdfb552f83f3cbf2a80002bb852135a")
(setf (get roborex::Trajectory :datatype-) "roborex/Trajectory")
(setf (get roborex::Trajectory :definition-)
      "ArmPose[] poses
int32 id

================================================================================
MSG: roborex/ArmPose
JointState world_joint
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



(provide :roborex/Trajectory "abdfb552f83f3cbf2a80002bb852135a")


