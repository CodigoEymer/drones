
(cl:in-package :asdf)

(defsystem "hrwros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConvertMetresToFeet" :depends-on ("_package_ConvertMetresToFeet"))
    (:file "_package_ConvertMetresToFeet" :depends-on ("_package"))
    (:file "SumaMult" :depends-on ("_package_SumaMult"))
    (:file "_package_SumaMult" :depends-on ("_package"))
  ))