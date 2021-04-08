;; Auto-generated. Do not edit!


(when (boundp 'roborex::ForwardKinematics)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'ForwardKinematics (find-package "ROBOREX")))
(unless (find-package "ROBOREX::FORWARDKINEMATICS")
  (make-package "ROBOREX::FORWARDKINEMATICS"))
(unless (find-package "ROBOREX::FORWARDKINEMATICSREQUEST")
  (make-package "ROBOREX::FORWARDKINEMATICSREQUEST"))
(unless (find-package "ROBOREX::FORWARDKINEMATICSRESPONSE")
  (make-package "ROBOREX::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roborex::ForwardKinematicsRequest
  :super ros::object
  :slots (_joints ))

(defmethod roborex::ForwardKinematicsRequest
  (:init
   (&key
    ((:joints __joints) ())
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; roborex/JointState[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborex/JointState[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborex/JointState[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance roborex::JointState :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roborex::ForwardKinematicsResponse
  :super ros::object
  :slots (_target ))

(defmethod roborex::ForwardKinematicsResponse
  (:init
   (&key
    ((:target __target) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _target __target)
   self)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _target
    (send _target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _target
       (send _target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;;
   self)
  )

(defclass roborex::ForwardKinematics
  :super ros::object
  :slots ())

(setf (get roborex::ForwardKinematics :md5sum-) "f0117f65ce6a9862c9734b997e4a7382")
(setf (get roborex::ForwardKinematics :datatype-) "roborex/ForwardKinematics")
(setf (get roborex::ForwardKinematics :request) roborex::ForwardKinematicsRequest)
(setf (get roborex::ForwardKinematics :response) roborex::ForwardKinematicsResponse)

(defmethod roborex::ForwardKinematicsRequest
  (:response () (instance roborex::ForwardKinematicsResponse :init)))

(setf (get roborex::ForwardKinematicsRequest :md5sum-) "f0117f65ce6a9862c9734b997e4a7382")
(setf (get roborex::ForwardKinematicsRequest :datatype-) "roborex/ForwardKinematicsRequest")
(setf (get roborex::ForwardKinematicsRequest :definition-)
      "JointState[] joints

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
---
geometry_msgs/Pose target

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

(setf (get roborex::ForwardKinematicsResponse :md5sum-) "f0117f65ce6a9862c9734b997e4a7382")
(setf (get roborex::ForwardKinematicsResponse :datatype-) "roborex/ForwardKinematicsResponse")
(setf (get roborex::ForwardKinematicsResponse :definition-)
      "JointState[] joints

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
---
geometry_msgs/Pose target

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



(provide :roborex/ForwardKinematics "f0117f65ce6a9862c9734b997e4a7382")


