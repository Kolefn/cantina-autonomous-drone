;; Auto-generated. Do not edit!


(when (boundp 'deeprotor_simulation_environment::ResetDroneSrv)
  (if (not (find-package "DEEPROTOR_SIMULATION_ENVIRONMENT"))
    (make-package "DEEPROTOR_SIMULATION_ENVIRONMENT"))
  (shadow 'ResetDroneSrv (find-package "DEEPROTOR_SIMULATION_ENVIRONMENT")))
(unless (find-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRV")
  (make-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRV"))
(unless (find-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRVREQUEST")
  (make-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRVREQUEST"))
(unless (find-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRVRESPONSE")
  (make-package "DEEPROTOR_SIMULATION_ENVIRONMENT::RESETDRONESRVRESPONSE"))

(in-package "ROS")





(defclass deeprotor_simulation_environment::ResetDroneSrvRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod deeprotor_simulation_environment::ResetDroneSrvRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x(float __x))
   (setq _y(float __y))
   (setq _z(float __z))
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
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass deeprotor_simulation_environment::ResetDroneSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod deeprotor_simulation_environment::ResetDroneSrvResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass deeprotor_simulation_environment::ResetDroneSrv
  :super ros::object
  :slots ())

(setf (get deeprotor_simulation_environment::ResetDroneSrv :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deeprotor_simulation_environment::ResetDroneSrv :datatype-) "deeprotor_simulation_environment/ResetDroneSrv")
(setf (get deeprotor_simulation_environment::ResetDroneSrv :request) deeprotor_simulation_environment::ResetDroneSrvRequest)
(setf (get deeprotor_simulation_environment::ResetDroneSrv :response) deeprotor_simulation_environment::ResetDroneSrvResponse)

(defmethod deeprotor_simulation_environment::ResetDroneSrvRequest
  (:response () (instance deeprotor_simulation_environment::ResetDroneSrvResponse :init)))

(setf (get deeprotor_simulation_environment::ResetDroneSrvRequest :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deeprotor_simulation_environment::ResetDroneSrvRequest :datatype-) "deeprotor_simulation_environment/ResetDroneSrvRequest")
(setf (get deeprotor_simulation_environment::ResetDroneSrvRequest :definition-)
      "float32 x
float32 y
float32 z
---
int32 success
")

(setf (get deeprotor_simulation_environment::ResetDroneSrvResponse :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deeprotor_simulation_environment::ResetDroneSrvResponse :datatype-) "deeprotor_simulation_environment/ResetDroneSrvResponse")
(setf (get deeprotor_simulation_environment::ResetDroneSrvResponse :definition-)
      "float32 x
float32 y
float32 z
---
int32 success
")



(provide :deeprotor_simulation_environment/ResetDroneSrv "51459ac9873b166b6314083bf1771edb")


