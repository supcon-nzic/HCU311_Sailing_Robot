
(cl:in-package :asdf)

(defsystem "ball_detected-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
  ))