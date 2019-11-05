
(cl:in-package :asdf)

(defsystem "deeprotor_simulation_environment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ResetDroneSrv" :depends-on ("_package_ResetDroneSrv"))
    (:file "_package_ResetDroneSrv" :depends-on ("_package"))
  ))