;; Auto-generated. Do not edit!


(when (boundp 'roborex::TrajectoryStatus)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'TrajectoryStatus (find-package "ROBOREX")))
(unless (find-package "ROBOREX::TRAJECTORYSTATUS")
  (make-package "ROBOREX::TRAJECTORYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryStatus.msg.html


(defclass roborex::TrajectoryStatus
  :super ros::object
  :slots (_status _id ))

(defmethod roborex::TrajectoryStatus
  (:init
   (&key
    ((:status __status) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _id (round __id))
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roborex::TrajectoryStatus :md5sum-) "8709cd49ae9641b749714ade70054694")
(setf (get roborex::TrajectoryStatus :datatype-) "roborex/TrajectoryStatus")
(setf (get roborex::TrajectoryStatus :definition-)
      "bool status
int32 id
")



(provide :roborex/TrajectoryStatus "8709cd49ae9641b749714ade70054694")


