
(cl:in-package :asdf)

(defsystem "ros_tcp_endpoint-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UnityHandshake" :depends-on ("_package_UnityHandshake"))
    (:file "_package_UnityHandshake" :depends-on ("_package"))
  ))