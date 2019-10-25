;; Auto-generated. Do not edit!


(when (boundp 'kinesis_video_msgs::KinesisVideoFrame)
  (if (not (find-package "KINESIS_VIDEO_MSGS"))
    (make-package "KINESIS_VIDEO_MSGS"))
  (shadow 'KinesisVideoFrame (find-package "KINESIS_VIDEO_MSGS")))
(unless (find-package "KINESIS_VIDEO_MSGS::KINESISVIDEOFRAME")
  (make-package "KINESIS_VIDEO_MSGS::KINESISVIDEOFRAME"))

(in-package "ROS")
;;//! \htmlinclude KinesisVideoFrame.msg.html
(if (not (find-package "DIAGNOSTIC_MSGS"))
  (ros::roseus-add-msgs "diagnostic_msgs"))


(defclass kinesis_video_msgs::KinesisVideoFrame
  :super ros::object
  :slots (_index _decoding_ts _presentation_ts _duration _codec_private_data _frame_data _flags _metadata ))

(defmethod kinesis_video_msgs::KinesisVideoFrame
  (:init
   (&key
    ((:index __index) 0)
    ((:decoding_ts __decoding_ts) 0)
    ((:presentation_ts __presentation_ts) 0)
    ((:duration __duration) 0)
    ((:codec_private_data __codec_private_data) (make-array 0 :initial-element 0 :element-type :char))
    ((:frame_data __frame_data) (make-array 0 :initial-element 0 :element-type :char))
    ((:flags __flags) 0)
    ((:metadata __metadata) (let (r) (dotimes (i 0) (push (instance diagnostic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _decoding_ts (round __decoding_ts))
   (setq _presentation_ts (round __presentation_ts))
   (setq _duration (round __duration))
   (setq _codec_private_data __codec_private_data)
   (setq _frame_data __frame_data)
   (setq _flags (round __flags))
   (setq _metadata __metadata)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:decoding_ts
   (&optional __decoding_ts)
   (if __decoding_ts (setq _decoding_ts __decoding_ts)) _decoding_ts)
  (:presentation_ts
   (&optional __presentation_ts)
   (if __presentation_ts (setq _presentation_ts __presentation_ts)) _presentation_ts)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:codec_private_data
   (&optional __codec_private_data)
   (if __codec_private_data (setq _codec_private_data __codec_private_data)) _codec_private_data)
  (:frame_data
   (&optional __frame_data)
   (if __frame_data (setq _frame_data __frame_data)) _frame_data)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
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
    ;; uint32 _index
    4
    ;; uint64 _decoding_ts
    8
    ;; uint64 _presentation_ts
    8
    ;; uint64 _duration
    8
    ;; uint8[] _codec_private_data
    (* 1    (length _codec_private_data)) 4
    ;; uint8[] _frame_data
    (* 1    (length _frame_data)) 4
    ;; uint16 _flags
    2
    ;; diagnostic_msgs/KeyValue[] _metadata
    (apply #'+ (send-all _metadata :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;; uint64 _decoding_ts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _decoding_ts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _decoding_ts) (= (length (_decoding_ts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_decoding_ts . bv) 0) 0) s)
              (write-long (ash (elt (_decoding_ts . bv) 1) -1) s))
             ((and (class _decoding_ts) (= (length (_decoding_ts . bv)) 1)) ;; big1
              (write-long (elt (_decoding_ts . bv) 0) s)
              (write-long (if (>= _decoding_ts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _decoding_ts s)(write-long (if (>= _decoding_ts 0) 0 #xffffffff) s)))
     ;; uint64 _presentation_ts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _presentation_ts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _presentation_ts) (= (length (_presentation_ts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_presentation_ts . bv) 0) 0) s)
              (write-long (ash (elt (_presentation_ts . bv) 1) -1) s))
             ((and (class _presentation_ts) (= (length (_presentation_ts . bv)) 1)) ;; big1
              (write-long (elt (_presentation_ts . bv) 0) s)
              (write-long (if (>= _presentation_ts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _presentation_ts s)(write-long (if (>= _presentation_ts 0) 0 #xffffffff) s)))
     ;; uint64 _duration
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _duration (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _duration) (= (length (_duration . bv)) 2)) ;; bignum
              (write-long (ash (elt (_duration . bv) 0) 0) s)
              (write-long (ash (elt (_duration . bv) 1) -1) s))
             ((and (class _duration) (= (length (_duration . bv)) 1)) ;; big1
              (write-long (elt (_duration . bv) 0) s)
              (write-long (if (>= _duration 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _duration s)(write-long (if (>= _duration 0) 0 #xffffffff) s)))
     ;; uint8[] _codec_private_data
     (write-long (length _codec_private_data) s)
     (princ _codec_private_data s)
     ;; uint8[] _frame_data
     (write-long (length _frame_data) s)
     (princ _frame_data s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; diagnostic_msgs/KeyValue[] _metadata
     (write-long (length _metadata) s)
     (dolist (elem _metadata)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _decoding_ts
     
#+(or :alpha :irix6 :x86_64)
      (setf _decoding_ts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _decoding_ts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _presentation_ts
     
#+(or :alpha :irix6 :x86_64)
      (setf _presentation_ts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _presentation_ts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _duration
     
#+(or :alpha :irix6 :x86_64)
      (setf _duration (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _duration (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8[] _codec_private_data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _codec_private_data (make-array n :element-type :char))
     (replace _codec_private_data buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _frame_data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _frame_data (make-array n :element-type :char))
     (replace _frame_data buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
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

(setf (get kinesis_video_msgs::KinesisVideoFrame :md5sum-) "27aa4ed7caa3f72619dd565fd09eddf0")
(setf (get kinesis_video_msgs::KinesisVideoFrame :datatype-) "kinesis_video_msgs/KinesisVideoFrame")
(setf (get kinesis_video_msgs::KinesisVideoFrame :definition-)
      "# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-data.html#how-data-header-frame
uint32 index

uint64 decoding_ts      # in microseconds
uint64 presentation_ts  # in microseconds
uint64 duration         # in microseconds

uint8[] codec_private_data
uint8[] frame_data
uint16 flags

# see https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-meta.html
diagnostic_msgs/KeyValue[] metadata

================================================================================
MSG: diagnostic_msgs/KeyValue
string key # what to label this value when viewing
string value # a value to track over time

")



(provide :kinesis_video_msgs/KinesisVideoFrame "27aa4ed7caa3f72619dd565fd09eddf0")


