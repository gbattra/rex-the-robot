
(cl:in-package :asdf)

(defsystem "roborex-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmPose" :depends-on ("_package_ArmPose"))
    (:file "_package_ArmPose" :depends-on ("_package"))
    (:file "BasePose" :depends-on ("_package_BasePose"))
    (:file "_package_BasePose" :depends-on ("_package"))
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "Trajectories" :depends-on ("_package_Trajectories"))
    (:file "_package_Trajectories" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
    (:file "TrajectoryStatus" :depends-on ("_package_TrajectoryStatus"))
    (:file "_package_TrajectoryStatus" :depends-on ("_package"))
  ))