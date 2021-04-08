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
  :slots (_poses ))

(defmethod roborex::Trajectory
  (:init
   (&key
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _poses __poses)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; roborex/ArmPose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
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
   ;;
   self)
  )

(setf (get roborex::Trajectory :md5sum-) "02bb950f0189c1fcde68ce66b9c7942a")
(setf (get roborex::Trajectory :datatype-) "roborex/Trajectory")
(setf (get roborex::Trajectory :definition-)
      "ArmPose[] poses
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



(provide :roborex/Trajectory "02bb950f0189c1fcde68ce66b9c7942a")


