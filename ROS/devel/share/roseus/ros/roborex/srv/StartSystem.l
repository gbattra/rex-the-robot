;; Auto-generated. Do not edit!


(when (boundp 'roborex::StartSystem)
  (if (not (find-package "ROBOREX"))
    (make-package "ROBOREX"))
  (shadow 'StartSystem (find-package "ROBOREX")))
(unless (find-package "ROBOREX::STARTSYSTEM")
  (make-package "ROBOREX::STARTSYSTEM"))
(unless (find-package "ROBOREX::STARTSYSTEMREQUEST")
  (make-package "ROBOREX::STARTSYSTEMREQUEST"))
(unless (find-package "ROBOREX::STARTSYSTEMRESPONSE")
  (make-package "ROBOREX::STARTSYSTEMRESPONSE"))

(in-package "ROS")





(defclass roborex::StartSystemRequest
  :super ros::object
  :slots (_start ))

(defmethod roborex::StartSystemRequest
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

(defclass roborex::StartSystemResponse
  :super ros::object
  :slots (_succeeded ))

(defmethod roborex::StartSystemResponse
  (:init
   (&key
    ((:succeeded __succeeded) nil)
    )
   (send-super :init)
   (setq _succeeded __succeeded)
   self)
  (:succeeded
   (&optional (__succeeded :null))
   (if (not (eq __succeeded :null)) (setq _succeeded __succeeded)) _succeeded)
  (:serialization-length
   ()
   (+
    ;; bool _succeeded
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _succeeded
       (if _succeeded (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _succeeded
     (setq _succeeded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roborex::StartSystem
  :super ros::object
  :slots ())

(setf (get roborex::StartSystem :md5sum-) "fef68d53bc3842fbc6d3b74baf134cd5")
(setf (get roborex::StartSystem :datatype-) "roborex/StartSystem")
(setf (get roborex::StartSystem :request) roborex::StartSystemRequest)
(setf (get roborex::StartSystem :response) roborex::StartSystemResponse)

(defmethod roborex::StartSystemRequest
  (:response () (instance roborex::StartSystemResponse :init)))

(setf (get roborex::StartSystemRequest :md5sum-) "fef68d53bc3842fbc6d3b74baf134cd5")
(setf (get roborex::StartSystemRequest :datatype-) "roborex/StartSystemRequest")
(setf (get roborex::StartSystemRequest :definition-)
      "bool start
---
bool succeeded
")

(setf (get roborex::StartSystemResponse :md5sum-) "fef68d53bc3842fbc6d3b74baf134cd5")
(setf (get roborex::StartSystemResponse :datatype-) "roborex/StartSystemResponse")
(setf (get roborex::StartSystemResponse :definition-)
      "bool start
---
bool succeeded
")



(provide :roborex/StartSystem "fef68d53bc3842fbc6d3b74baf134cd5")


