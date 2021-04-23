;; Auto-generated. Do not edit!


(when (boundp 'roborex::Start)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'Start (find-package "ROBOREX")))
(unless (find-package "ROBOREX::START")
  (make-package "ROBOREX::START"))
(unless (find-package "ROBOREX::STARTREQUEST")
  (make-package "ROBOREX::STARTREQUEST"))
(unless (find-package "ROBOREX::STARTRESPONSE")
  (make-package "ROBOREX::STARTRESPONSE"))

(in-package "ROS")





(defclass roborex::StartRequest
  :super ros::object
  :slots (_start ))

(defmethod roborex::StartRequest
  (:init
   (&key
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&optional (__start :null))
   (if (not (eq __start :null)) (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roborex::StartResponse
  :super ros::object
  :slots ())

(defmethod roborex::StartResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roborex::Start
  :super ros::object
  :slots ())

(setf (get roborex::Start :md5sum-) "676aa7bfb3ec2071e814f2368dfd5fb5")
(setf (get roborex::Start :datatype-) "roborex/Start")
(setf (get roborex::Start :request) roborex::StartRequest)
(setf (get roborex::Start :response) roborex::StartResponse)

(defmethod roborex::StartRequest
  (:response () (instance roborex::StartResponse :init)))

(setf (get roborex::StartRequest :md5sum-) "676aa7bfb3ec2071e814f2368dfd5fb5")
(setf (get roborex::StartRequest :datatype-) "roborex/StartRequest")
(setf (get roborex::StartRequest :definition-)
      "bool start

---
")

(setf (get roborex::StartResponse :md5sum-) "676aa7bfb3ec2071e814f2368dfd5fb5")
(setf (get roborex::StartResponse :datatype-) "roborex/StartResponse")
(setf (get roborex::StartResponse :definition-)
      "bool start

---
")



(provide :roborex/Start "676aa7bfb3ec2071e814f2368dfd5fb5")


