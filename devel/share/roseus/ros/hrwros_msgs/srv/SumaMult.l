;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::SumaMult)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'SumaMult (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::SUMAMULT")
  (make-package "HRWROS_MSGS::SUMAMULT"))
(unless (find-package "HRWROS_MSGS::SUMAMULTREQUEST")
  (make-package "HRWROS_MSGS::SUMAMULTREQUEST"))
(unless (find-package "HRWROS_MSGS::SUMAMULTRESPONSE")
  (make-package "HRWROS_MSGS::SUMAMULTRESPONSE"))

(in-package "ROS")





(defclass hrwros_msgs::SumaMultRequest
  :super ros::object
  :slots (_a _b _c _d ))

(defmethod hrwros_msgs::SumaMultRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _d (float __d))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ;; float64 _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::SumaMultResponse
  :super ros::object
  :slots (_suma _mult ))

(defmethod hrwros_msgs::SumaMultResponse
  (:init
   (&key
    ((:suma __suma) 0.0)
    ((:mult __mult) 0.0)
    )
   (send-super :init)
   (setq _suma (float __suma))
   (setq _mult (float __mult))
   self)
  (:suma
   (&optional __suma)
   (if __suma (setq _suma __suma)) _suma)
  (:mult
   (&optional __mult)
   (if __mult (setq _mult __mult)) _mult)
  (:serialization-length
   ()
   (+
    ;; float64 _suma
    8
    ;; float64 _mult
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _suma
       (sys::poke _suma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mult
       (sys::poke _mult (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _suma
     (setq _suma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mult
     (setq _mult (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::SumaMult
  :super ros::object
  :slots ())

(setf (get hrwros_msgs::SumaMult :md5sum-) "e9e24fd947294769c45ffd94755c4345")
(setf (get hrwros_msgs::SumaMult :datatype-) "hrwros_msgs/SumaMult")
(setf (get hrwros_msgs::SumaMult :request) hrwros_msgs::SumaMultRequest)
(setf (get hrwros_msgs::SumaMult :response) hrwros_msgs::SumaMultResponse)

(defmethod hrwros_msgs::SumaMultRequest
  (:response () (instance hrwros_msgs::SumaMultResponse :init)))

(setf (get hrwros_msgs::SumaMultRequest :md5sum-) "e9e24fd947294769c45ffd94755c4345")
(setf (get hrwros_msgs::SumaMultRequest :datatype-) "hrwros_msgs/SumaMultRequest")
(setf (get hrwros_msgs::SumaMultRequest :definition-)
      "float64 a		
float64 b
float64 c
float64 d
---
float64 suma	
float64 mult


")

(setf (get hrwros_msgs::SumaMultResponse :md5sum-) "e9e24fd947294769c45ffd94755c4345")
(setf (get hrwros_msgs::SumaMultResponse :datatype-) "hrwros_msgs/SumaMultResponse")
(setf (get hrwros_msgs::SumaMultResponse :definition-)
      "float64 a		
float64 b
float64 c
float64 d
---
float64 suma	
float64 mult


")



(provide :hrwros_msgs/SumaMult "e9e24fd947294769c45ffd94755c4345")


