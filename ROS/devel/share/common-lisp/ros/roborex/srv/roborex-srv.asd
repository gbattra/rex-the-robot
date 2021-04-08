
(cl:in-package :asdf)

(defsystem "roborex-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :roborex-msg
)
  :components ((:file "_package")
    (:file "ForwardKinematics" :depends-on ("_package_ForwardKinematics"))
    (:file "_package_ForwardKinematics" :depends-on ("_package"))
    (:file "InverseKinematics" :depends-on ("_package_InverseKinematics"))
    (:file "_package_InverseKinematics" :depends-on ("_package"))
    (:file "TrajectoryPlanner" :depends-on ("_package_TrajectoryPlanner"))
    (:file "_package_TrajectoryPlanner" :depends-on ("_package"))
  ))