;; Auto-generated. Do not edit!


(when (boundp 'deepracer_simulation_environment::GetWaypointSrv)
  (if (not (find-package "DEEPRACER_SIMULATION_ENVIRONMENT"))
    (make-package "DEEPRACER_SIMULATION_ENVIRONMENT"))
  (shadow 'GetWaypointSrv (find-package "DEEPRACER_SIMULATION_ENVIRONMENT")))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRV")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRV"))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRVREQUEST")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRVREQUEST"))
(unless (find-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRVRESPONSE")
  (make-package "DEEPRACER_SIMULATION_ENVIRONMENT::GETWAYPOINTSRVRESPONSE"))

(in-package "ROS")





(defclass deepracer_simulation_environment::GetWaypointSrvRequest
  :super ros::object
  :slots ())

(defmethod deepracer_simulation_environment::GetWaypointSrvRequest
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

(defclass deepracer_simulation_environment::GetWaypointSrvResponse
  :super ros::object
  :slots (_row _col _waypoints ))

(defmethod deepracer_simulation_environment::GetWaypointSrvResponse
  (:init
   (&key
    ((:row __row) 0)
    ((:col __col) 0)
    ((:waypoints __waypoints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _row (round __row))
   (setq _col (round __col))
   (setq _waypoints __waypoints)
   self)
  (:row
   (&optional __row)
   (if __row (setq _row __row)) _row)
  (:col
   (&optional __col)
   (if __col (setq _col __col)) _col)
  (:waypoints
   (&optional __waypoints)
   (if __waypoints (setq _waypoints __waypoints)) _waypoints)
  (:serialization-length
   ()
   (+
    ;; int32 _row
    4
    ;; int32 _col
    4
    ;; float64[] _waypoints
    (* 8    (length _waypoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _row
       (write-long _row s)
     ;; int32 _col
       (write-long _col s)
     ;; float64[] _waypoints
     (write-long (length _waypoints) s)
     (dotimes (i (length _waypoints))
       (sys::poke (elt _waypoints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _row
     (setq _row (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _col
     (setq _col (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _waypoints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass deepracer_simulation_environment::GetWaypointSrv
  :super ros::object
  :slots ())

(setf (get deepracer_simulation_environment::GetWaypointSrv :md5sum-) "dd1c3c0f312afb554365a4b5e8f07a10")
(setf (get deepracer_simulation_environment::GetWaypointSrv :datatype-) "deepracer_simulation_environment/GetWaypointSrv")
(setf (get deepracer_simulation_environment::GetWaypointSrv :request) deepracer_simulation_environment::GetWaypointSrvRequest)
(setf (get deepracer_simulation_environment::GetWaypointSrv :response) deepracer_simulation_environment::GetWaypointSrvResponse)

(defmethod deepracer_simulation_environment::GetWaypointSrvRequest
  (:response () (instance deepracer_simulation_environment::GetWaypointSrvResponse :init)))

(setf (get deepracer_simulation_environment::GetWaypointSrvRequest :md5sum-) "dd1c3c0f312afb554365a4b5e8f07a10")
(setf (get deepracer_simulation_environment::GetWaypointSrvRequest :datatype-) "deepracer_simulation_environment/GetWaypointSrvRequest")
(setf (get deepracer_simulation_environment::GetWaypointSrvRequest :definition-)
      "---
int32 row
int32 col
float64[] waypoints
")

(setf (get deepracer_simulation_environment::GetWaypointSrvResponse :md5sum-) "dd1c3c0f312afb554365a4b5e8f07a10")
(setf (get deepracer_simulation_environment::GetWaypointSrvResponse :datatype-) "deepracer_simulation_environment/GetWaypointSrvResponse")
(setf (get deepracer_simulation_environment::GetWaypointSrvResponse :definition-)
      "---
int32 row
int32 col
float64[] waypoints
")



(provide :deepracer_simulation_environment/GetWaypointSrv "dd1c3c0f312afb554365a4b5e8f07a10")


