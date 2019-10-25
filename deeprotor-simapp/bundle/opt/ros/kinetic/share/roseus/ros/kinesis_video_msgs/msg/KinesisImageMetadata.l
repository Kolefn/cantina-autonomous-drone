;; Auto-generated. Do not edit!


(when (boundp 'kinesis_video_msgs::KinesisImageMetadata)
  (if (not (find-package "KINESIS_VIDEO_MSGS"))
    (make-package "KINESIS_VIDEO_MSGS"))
  (shadow 'KinesisImageMetadata (find-package "KINESIS_VIDEO_MSGS")))
(unless (find-package "KINESIS_VIDEO_MSGS::KINESISIMAGEMETADATA")
  (make-package "KINESIS_VIDEO_MSGS::KINESISIMAGEMETADATA"))

(in-package "ROS")
;;//! \htmlinclude KinesisImageMetadata.msg.html
(if (not (find-package "DIAGNOSTIC_MSGS"))
  (ros::roseus-add-msgs "diagnostic_msgs"))


(defclass kinesis_video_msgs::KinesisImageMetadata
  :super ros::object
  :slots (_metadata ))

(defmethod kinesis_video_msgs::KinesisImageMetadata
  (:init
   (&key
    ((:metadata __metadata) (let (r) (dotimes (i 0) (push (instance diagnostic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _metadata __metadata)
   self)
  (:metadata
   (&rest __metadata)
   (if (keywordp (car __metadata))
       (send* _metadata __metadata)
     (progn
       (if __metadata (setq _metadata (car __metadata)))
       _metadata)))
  (:serialization-length
   ()
   (+
    ;; diagnostic_msgs/KeyValue[] _metadata
    (apply #'+ (send-all _metadata :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; diagnostic_msgs/KeyValue[] _metadata
     (write-long (length _metadata) s)
     (dolist (elem _metadata)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; diagnostic_msgs/KeyValue[] _metadata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _metadata (let (r) (dotimes (i n) (push (instance diagnostic_msgs::KeyValue :init) r)) r))
     (dolist (elem- _metadata)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kinesis_video_msgs::KinesisImageMetadata :md5sum-) "bed809d676f785d0b0f3eb89897c74f7")
(setf (get kinesis_video_msgs::KinesisImageMetadata :datatype-) "kinesis_video_msgs/KinesisImageMetadata")
(setf (get kinesis_video_msgs::KinesisImageMetadata :definition-)
      "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html
diagnostic_msgs/KeyValue[] metadata

================================================================================
MSG: diagnostic_msgs/KeyValue
string key # what to label this value when viewing
string value # a value to track over time

")



(provide :kinesis_video_msgs/KinesisImageMetadata "bed809d676f785d0b0f3eb89897c74f7")


