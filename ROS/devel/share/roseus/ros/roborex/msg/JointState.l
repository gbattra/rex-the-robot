;; Auto-generated. Do not edit!


(when (boundp 'roborex::JointState)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'JointState (find-package "ROBOREX")))
(unless (find-package "ROBOREX::JOINTSTATE")
  (make-package "ROBOREX::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roborex::JointState
  :super ros::object
  :slots (_translation _angle _upper_bound _lower_bound _axis ))

(defmethod roborex::JointState
  (:init
   (&key
    ((:translation __translation) (instance geometry_msgs::Point :init))
    ((:angle __angle) 0.0)
    ((:upper_bound __upper_bound) 0.0)
    ((:lower_bound __lower_bound) 0.0)
    ((:axis __axis) 0)
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _angle (float __angle))
   (setq _upper_bound (float __upper_bound))
   (setq _lower_bound (float __lower_bound))
   (setq _axis (round __axis))
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:upper_bound
   (&optional __upper_bound)
   (if __upper_bound (setq _upper_bound __upper_bound)) _upper_bound)
  (:lower_bound
   (&optional __lower_bound)
   (if __lower_bound (setq _lower_bound __lower_bound)) _lower_bound)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _translation
    (send _translation :serialization-length)
    ;; float32 _angle
    4
    ;; float32 _upper_bound
    4
    ;; float32 _lower_bound
    4
    ;; int32 _axis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _translation
       (send _translation :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _upper_bound
       (sys::poke _upper_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lower_bound
       (sys::poke _lower_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _axis
       (write-long _axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _upper_bound
     (setq _upper_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lower_bound
     (setq _lower_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _axis
     (setq _axis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roborex::JointState :md5sum-) "b23171072f01fcca9054b0dc16f96450")
(setf (get roborex::JointState :datatype-) "roborex/JointState")
(setf (get roborex::JointState :definition-)
      "geometry_msgs/Point translation
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



(provide :roborex/JointState "b23171072f01fcca9054b0dc16f96450")


