;; Auto-generated. Do not edit!


(when (boundp 'roborex::BasePose)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'BasePose (find-package "ROBOREX")))
(unless (find-package "ROBOREX::BASEPOSE")
  (make-package "ROBOREX::BASEPOSE"))

(in-package "ROS")
;;//! \htmlinclude BasePose.msg.html


(defclass roborex::BasePose
  :super ros::object
  :slots (_x _y _z _angle ))

(defmethod roborex::BasePose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _angle (float __angle))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roborex::BasePose :md5sum-) "1b5ea1805e9322c86a7b0bff9ff9764e")
(setf (get roborex::BasePose :datatype-) "roborex/BasePose")
(setf (get roborex::BasePose :definition-)
      "float32 x
float32 y
float32 z
float32 angle


")



(provide :roborex/BasePose "1b5ea1805e9322c86a7b0bff9ff9764e")


