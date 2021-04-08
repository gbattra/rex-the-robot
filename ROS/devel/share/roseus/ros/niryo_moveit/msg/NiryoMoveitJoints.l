;; Auto-generated. Do not edit!


(when (boundp 'niryo_moveit::NiryoMoveitJoints)
  (if (not (find-package "NIRYO_MOVEIT"))
    (make-package "NIRYO_MOVEIT"))
  (shadow 'NiryoMoveitJoints (find-package "NIRYO_MOVEIT")))
(unless (find-package "NIRYO_MOVEIT::NIRYOMOVEITJOINTS")
  (make-package "NIRYO_MOVEIT::NIRYOMOVEITJOINTS"))

(in-package "ROS")
;;//! \htmlinclude NiryoMoveitJoints.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_moveit::NiryoMoveitJoints
  :super ros::object
  :slots (_joint_00 _joint_01 _joint_02 _joint_03 _joint_04 _joint_05 _pick_pose _place_pose ))

(defmethod niryo_moveit::NiryoMoveitJoints
  (:init
   (&key
    ((:joint_00 __joint_00) 0.0)
    ((:joint_01 __joint_01) 0.0)
    ((:joint_02 __joint_02) 0.0)
    ((:joint_03 __joint_03) 0.0)
    ((:joint_04 __joint_04) 0.0)
    ((:joint_05 __joint_05) 0.0)
    ((:pick_pose __pick_pose) (instance geometry_msgs::Pose :init))
    ((:place_pose __place_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _joint_00 (float __joint_00))
   (setq _joint_01 (float __joint_01))
   (setq _joint_02 (float __joint_02))
   (setq _joint_03 (float __joint_03))
   (setq _joint_04 (float __joint_04))
   (setq _joint_05 (float __joint_05))
   (setq _pick_pose __pick_pose)
   (setq _place_pose __place_pose)
   self)
  (:joint_00
   (&optional __joint_00)
   (if __joint_00 (setq _joint_00 __joint_00)) _joint_00)
  (:joint_01
   (&optional __joint_01)
   (if __joint_01 (setq _joint_01 __joint_01)) _joint_01)
  (:joint_02
   (&optional __joint_02)
   (if __joint_02 (setq _joint_02 __joint_02)) _joint_02)
  (:joint_03
   (&optional __joint_03)
   (if __joint_03 (setq _joint_03 __joint_03)) _joint_03)
  (:joint_04
   (&optional __joint_04)
   (if __joint_04 (setq _joint_04 __joint_04)) _joint_04)
  (:joint_05
   (&optional __joint_05)
   (if __joint_05 (setq _joint_05 __joint_05)) _joint_05)
  (:pick_pose
   (&rest __pick_pose)
   (if (keywordp (car __pick_pose))
       (send* _pick_pose __pick_pose)
     (progn
       (if __pick_pose (setq _pick_pose (car __pick_pose)))
       _pick_pose)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _joint_00
    8
    ;; float64 _joint_01
    8
    ;; float64 _joint_02
    8
    ;; float64 _joint_03
    8
    ;; float64 _joint_04
    8
    ;; float64 _joint_05
    8
    ;; geometry_msgs/Pose _pick_pose
    (send _pick_pose :serialization-length)
    ;; geometry_msgs/Pose _place_pose
    (send _place_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint_00
       (sys::poke _joint_00 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_01
       (sys::poke _joint_01 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_02
       (sys::poke _joint_02 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_03
       (sys::poke _joint_03 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_04
       (sys::poke _joint_04 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_05
       (sys::poke _joint_05 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _pick_pose
       (send _pick_pose :serialize s)
     ;; geometry_msgs/Pose _place_pose
       (send _place_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint_00
     (setq _joint_00 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_01
     (setq _joint_01 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_02
     (setq _joint_02 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_03
     (setq _joint_03 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_04
     (setq _joint_04 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_05
     (setq _joint_05 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _pick_pose
     (send _pick_pose :deserialize buf ptr-) (incf ptr- (send _pick_pose :serialization-length))
   ;; geometry_msgs/Pose _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;;
   self)
  )

(setf (get niryo_moveit::NiryoMoveitJoints :md5sum-) "eb9a754ca01417c49ae5e00219146bda")
(setf (get niryo_moveit::NiryoMoveitJoints :datatype-) "niryo_moveit/NiryoMoveitJoints")
(setf (get niryo_moveit::NiryoMoveitJoints :definition-)
      "float64 joint_00
float64 joint_01
float64 joint_02
float64 joint_03
float64 joint_04
float64 joint_05
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :niryo_moveit/NiryoMoveitJoints "eb9a754ca01417c49ae5e00219146bda")


