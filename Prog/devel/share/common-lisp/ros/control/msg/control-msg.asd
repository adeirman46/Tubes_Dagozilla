
(cl:in-package :asdf)

(defsystem "control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EncoderData" :depends-on ("_package_EncoderData"))
    (:file "_package_EncoderData" :depends-on ("_package"))
    (:file "HardwareCommand" :depends-on ("_package_HardwareCommand"))
    (:file "_package_HardwareCommand" :depends-on ("_package"))
  ))