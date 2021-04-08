
(cl:in-package :asdf)

(defsystem "roborex-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmPose" :depends-on ("_package_ArmPose"))
    (:file "_package_ArmPose" :depends-on ("_package"))
    (:file "BasePose" :depends-on ("_package_BasePose"))
    (:file "_package_BasePose" :depends-on ("_package"))
    (:file "CmdVel" :depends-on ("_package_CmdVel"))
    (:file "_package_CmdVel" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
  ))