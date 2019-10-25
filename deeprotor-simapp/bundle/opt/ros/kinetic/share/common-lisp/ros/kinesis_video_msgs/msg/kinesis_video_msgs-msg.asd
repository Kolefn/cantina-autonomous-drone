
(cl:in-package :asdf)

(defsystem "kinesis_video_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :diagnostic_msgs-msg
)
  :components ((:file "_package")
    (:file "KinesisImageMetadata" :depends-on ("_package_KinesisImageMetadata"))
    (:file "_package_KinesisImageMetadata" :depends-on ("_package"))
    (:file "KinesisVideoFrame" :depends-on ("_package_KinesisVideoFrame"))
    (:file "_package_KinesisVideoFrame" :depends-on ("_package"))
  ))