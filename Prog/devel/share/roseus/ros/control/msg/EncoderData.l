;; Auto-generated. Do not edit!


(when (boundp 'control::EncoderData)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'EncoderData (find-package "CONTROL")))
(unless (find-package "CONTROL::ENCODERDATA")
  (make-package "CONTROL::ENCODERDATA"))

(in-package "ROS")
;;//! \htmlinclude EncoderData.msg.html


(defclass control::EncoderData
  :super ros::object
  :slots (_en_ext1 _en_ext2 _en_ext3 _en_in1 _en_in2 _en_in3 _en_in4 ))

(defmethod control::EncoderData
  (:init
   (&key
    ((:en_ext1 __en_ext1) 0.0)
    ((:en_ext2 __en_ext2) 0.0)
    ((:en_ext3 __en_ext3) 0.0)
    ((:en_in1 __en_in1) 0.0)
    ((:en_in2 __en_in2) 0.0)
    ((:en_in3 __en_in3) 0.0)
    ((:en_in4 __en_in4) 0.0)
    )
   (send-super :init)
   (setq _en_ext1 (float __en_ext1))
   (setq _en_ext2 (float __en_ext2))
   (setq _en_ext3 (float __en_ext3))
   (setq _en_in1 (float __en_in1))
   (setq _en_in2 (float __en_in2))
   (setq _en_in3 (float __en_in3))
   (setq _en_in4 (float __en_in4))
   self)
  (:en_ext1
   (&optional __en_ext1)
   (if __en_ext1 (setq _en_ext1 __en_ext1)) _en_ext1)
  (:en_ext2
   (&optional __en_ext2)
   (if __en_ext2 (setq _en_ext2 __en_ext2)) _en_ext2)
  (:en_ext3
   (&optional __en_ext3)
   (if __en_ext3 (setq _en_ext3 __en_ext3)) _en_ext3)
  (:en_in1
   (&optional __en_in1)
   (if __en_in1 (setq _en_in1 __en_in1)) _en_in1)
  (:en_in2
   (&optional __en_in2)
   (if __en_in2 (setq _en_in2 __en_in2)) _en_in2)
  (:en_in3
   (&optional __en_in3)
   (if __en_in3 (setq _en_in3 __en_in3)) _en_in3)
  (:en_in4
   (&optional __en_in4)
   (if __en_in4 (setq _en_in4 __en_in4)) _en_in4)
  (:serialization-length
   ()
   (+
    ;; float32 _en_ext1
    4
    ;; float32 _en_ext2
    4
    ;; float32 _en_ext3
    4
    ;; float32 _en_in1
    4
    ;; float32 _en_in2
    4
    ;; float32 _en_in3
    4
    ;; float32 _en_in4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _en_ext1
       (sys::poke _en_ext1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_ext2
       (sys::poke _en_ext2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_ext3
       (sys::poke _en_ext3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_in1
       (sys::poke _en_in1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_in2
       (sys::poke _en_in2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_in3
       (sys::poke _en_in3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _en_in4
       (sys::poke _en_in4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _en_ext1
     (setq _en_ext1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_ext2
     (setq _en_ext2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_ext3
     (setq _en_ext3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_in1
     (setq _en_in1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_in2
     (setq _en_in2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_in3
     (setq _en_in3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _en_in4
     (setq _en_in4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control::EncoderData :md5sum-) "23ea1aec3b3aed5da94835b8bde1468c")
(setf (get control::EncoderData :datatype-) "control/EncoderData")
(setf (get control::EncoderData :definition-)
      "float32 en_ext1
float32 en_ext2
float32 en_ext3
float32 en_in1
float32 en_in2
float32 en_in3
float32 en_in4

")



(provide :control/EncoderData "23ea1aec3b3aed5da94835b8bde1468c")


