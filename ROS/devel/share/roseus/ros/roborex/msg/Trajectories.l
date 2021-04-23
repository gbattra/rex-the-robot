;; Auto-generated. Do not edit!


(when (boundp 'roborex::Trajectories)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'Trajectories (find-package "ROBOREX")))
(unless (find-package "ROBOREX::TRAJECTORIES")
  (make-package "ROBOREX::TRAJECTORIES"))

(in-package "ROS")
;;//! \htmlinclude Trajectories.msg.html


(defclass roborex::Trajectories
  :super ros::object
  :slots (_trajectories ))

(defmethod roborex::Trajectories
  (:init
   (&key
    ((:trajectories __trajectories) ())
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; roborex/Trajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/Trajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/Trajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance roborex::Trajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roborex::Trajectories :md5sum-) "8815e9c3c7e5428d6d83e942eb0b7216")
(setf (get roborex::Trajectories :datatype-) "roborex/Trajectories")
(setf (get roborex::Trajectories :definition-)
      "Trajectory[] trajectories

================================================================================
MSG: roborex/Trajectory
ArmPose[] poses
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



(provide :roborex/Trajectories "8815e9c3c7e5428d6d83e942eb0b7216")


