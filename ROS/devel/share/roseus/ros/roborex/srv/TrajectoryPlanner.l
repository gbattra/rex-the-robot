;; Auto-generated. Do not edit!


(when (boundp 'roborex::TrajectoryPlanner)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'TrajectoryPlanner (find-package "ROBOREX")))
(unless (find-package "ROBOREX::TRAJECTORYPLANNER")
  (make-package "ROBOREX::TRAJECTORYPLANNER"))
(unless (find-package "ROBOREX::TRAJECTORYPLANNERREQUEST")
  (make-package "ROBOREX::TRAJECTORYPLANNERREQUEST"))
(unless (find-package "ROBOREX::TRAJECTORYPLANNERRESPONSE")
  (make-package "ROBOREX::TRAJECTORYPLANNERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roborex::TrajectoryPlannerRequest
  :super ros::object
  :slots (_arm_pose _target _grasp_trajectory _release_trajectory ))

(defmethod roborex::TrajectoryPlannerRequest
  (:init
   (&key
    ((:arm_pose __arm_pose) (instance roborex::ArmPose :init))
    ((:target __target) (instance geometry_msgs::Pose :init))
    ((:grasp_trajectory __grasp_trajectory) nil)
    ((:release_trajectory __release_trajectory) nil)
    )
   (send-super :init)
   (setq _arm_pose __arm_pose)
   (setq _target __target)
   (setq _grasp_trajectory __grasp_trajectory)
   (setq _release_trajectory __release_trajectory)
   self)
  (:arm_pose
   (&rest __arm_pose)
   (if (keywordp (car __arm_pose))
       (send* _arm_pose __arm_pose)
     (progn
       (if __arm_pose (setq _arm_pose (car __arm_pose)))
       _arm_pose)))
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:grasp_trajectory
   (&optional (__grasp_trajectory :null))
   (if (not (eq __grasp_trajectory :null)) (setq _grasp_trajectory __grasp_trajectory)) _grasp_trajectory)
  (:release_trajectory
   (&optional (__release_trajectory :null))
   (if (not (eq __release_trajectory :null)) (setq _release_trajectory __release_trajectory)) _release_trajectory)
  (:serialization-length
   ()
   (+
    ;; roborex/ArmPose _arm_pose
    (send _arm_pose :serialization-length)
    ;; geometry_msgs/Pose _target
    (send _target :serialization-length)
    ;; bool _grasp_trajectory
    1
    ;; bool _release_trajectory
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/ArmPose _arm_pose
       (send _arm_pose :serialize s)
     ;; geometry_msgs/Pose _target
       (send _target :serialize s)
     ;; bool _grasp_trajectory
       (if _grasp_trajectory (write-byte -1 s) (write-byte 0 s))
     ;; bool _release_trajectory
       (if _release_trajectory (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/ArmPose _arm_pose
     (send _arm_pose :deserialize buf ptr-) (incf ptr- (send _arm_pose :serialization-length))
   ;; geometry_msgs/Pose _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; bool _grasp_trajectory
     (setq _grasp_trajectory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _release_trajectory
     (setq _release_trajectory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roborex::TrajectoryPlannerResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod roborex::TrajectoryPlannerResponse
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

(defclass roborex::TrajectoryPlanner
  :super ros::object
  :slots ())

(setf (get roborex::TrajectoryPlanner :md5sum-) "367c998270ed8c4c22d2346f6cade297")
(setf (get roborex::TrajectoryPlanner :datatype-) "roborex/TrajectoryPlanner")
(setf (get roborex::TrajectoryPlanner :request) roborex::TrajectoryPlannerRequest)
(setf (get roborex::TrajectoryPlanner :response) roborex::TrajectoryPlannerResponse)

(defmethod roborex::TrajectoryPlannerRequest
  (:response () (instance roborex::TrajectoryPlannerResponse :init)))

(setf (get roborex::TrajectoryPlannerRequest :md5sum-) "367c998270ed8c4c22d2346f6cade297")
(setf (get roborex::TrajectoryPlannerRequest :datatype-) "roborex/TrajectoryPlannerRequest")
(setf (get roborex::TrajectoryPlannerRequest :definition-)
      "ArmPose arm_pose
geometry_msgs/Pose target
bool grasp_trajectory
bool release_trajectory

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
Trajectory[] trajectories

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

(setf (get roborex::TrajectoryPlannerResponse :md5sum-) "367c998270ed8c4c22d2346f6cade297")
(setf (get roborex::TrajectoryPlannerResponse :datatype-) "roborex/TrajectoryPlannerResponse")
(setf (get roborex::TrajectoryPlannerResponse :definition-)
      "ArmPose arm_pose
geometry_msgs/Pose target
bool grasp_trajectory
bool release_trajectory

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
Trajectory[] trajectories

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



(provide :roborex/TrajectoryPlanner "367c998270ed8c4c22d2346f6cade297")


