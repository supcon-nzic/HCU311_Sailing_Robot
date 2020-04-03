;; Auto-generated. Do not edit!


(when (boundp 'sailing_robot::ll)
  (if (not (find-package "SAILING_ROBOT"))
    (make-package "SAILING_ROBOT"))
  (shadow 'll (find-package "SAILING_ROBOT")))
(unless (find-package "SAILING_ROBOT::LL")
  (make-package "SAILING_ROBOT::LL"))

(in-package "ROS")
;;//! \htmlinclude ll.msg.html


(defclass sailing_robot::ll
  :super ros::object
  :slots (_lat _lon ))

(defmethod sailing_robot::ll
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:serialization-length
   ()
   (+
    ;; float32 _lat
    4
    ;; float32 _lon
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lat
     (setq _lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon
     (setq _lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sailing_robot::ll :md5sum-) "c24029cbb90b28da08009a1a44081308")
(setf (get sailing_robot::ll :datatype-) "sailing_robot/ll")
(setf (get sailing_robot::ll :definition-)
      "# message for publishing position
float32 lat
float32 lon

")



(provide :sailing_robot/ll "c24029cbb90b28da08009a1a44081308")


