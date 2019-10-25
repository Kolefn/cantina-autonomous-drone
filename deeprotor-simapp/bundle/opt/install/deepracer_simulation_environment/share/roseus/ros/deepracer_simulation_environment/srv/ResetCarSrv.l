;; Auto-generated. Do not edit!


(when (boundp 'deepracer_simulation_environment::ResetCarSrv)
  (if (not (find-package "DEEPRACER_SIMULATION_ENVIRONMENT"))
    (make-package "DEEPRACER_SIMULATION_ENVIRONMENT"))
  (shadow 'ResetCarSrv (find-package "DEEPRACER_SIMULATION_ENVIRONMENT")))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRV")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRV"))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRVREQUEST")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRVREQUEST"))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRVRESPONSE")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::RESETCARSRVRESPONSE"))

(in-package "ROS")





(defclass deepracer_simulation_environment::ResetCarSrvRequest
  :super ros::object
  :slots (_ndist _next_index ))

(defmethod deepracer_simulation_environment::ResetCarSrvRequest
  (:init
   (&key
    ((:ndist __ndist) 0.0)
    ((:next_index __next_index) 0)
    )
   (send-super :init)
   (setq _ndist (float __ndist))
   (setq _next_index (round __next_index))
   self)
  (:ndist
   (&optional __ndist)
   (if __ndist (setq _ndist __ndist)) _ndist)
  (:next_index
   (&optional __next_index)
   (if __next_index (setq _next_index __next_index)) _next_index)
  (:serialization-length
   ()
   (+
    ;; float32 _ndist
    4
    ;; int32 _next_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ndist
       (sys::poke _ndist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _next_index
       (write-long _next_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ndist
     (setq _ndist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _next_index
     (setq _next_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass deepracer_simulation_environment::ResetCarSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod deepracer_simulation_environment::ResetCarSrvResponse
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

(defclass deepracer_simulation_environment::ResetCarSrv
  :super ros::object
  :slots ())

(setf (get deepracer_simulation_environment::ResetCarSrv :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deepracer_simulation_environment::ResetCarSrv :datatype-) "deepracer_simulation_environment/ResetCarSrv")
(setf (get deepracer_simulation_environment::ResetCarSrv :request) deepracer_simulation_environment::ResetCarSrvRequest)
(setf (get deepracer_simulation_environment::ResetCarSrv :response) deepracer_simulation_environment::ResetCarSrvResponse)

(defmethod deepracer_simulation_environment::ResetCarSrvRequest
  (:response () (instance deepracer_simulation_environment::ResetCarSrvResponse :init)))

(setf (get deepracer_simulation_environment::ResetCarSrvRequest :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deepracer_simulation_environment::ResetCarSrvRequest :datatype-) "deepracer_simulation_environment/ResetCarSrvRequest")
(setf (get deepracer_simulation_environment::ResetCarSrvRequest :definition-)
      "float32 ndist
int32 next_index
---
int32 success
")

(setf (get deepracer_simulation_environment::ResetCarSrvResponse :md5sum-) "51459ac9873b166b6314083bf1771edb")
(setf (get deepracer_simulation_environment::ResetCarSrvResponse :datatype-) "deepracer_simulation_environment/ResetCarSrvResponse")
(setf (get deepracer_simulation_environment::ResetCarSrvResponse :definition-)
      "float32 ndist
int32 next_index
---
int32 success
")



(provide :deepracer_simulation_environment/ResetCarSrv "51459ac9873b166b6314083bf1771edb")


