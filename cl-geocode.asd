(in-package :cl-user)

(asdf:defsystem cl-geocode
    :components ((:file "package")
		 (:file "zip-util" :depends-on ("package"))
		 (:file "geocode" :depends-on ("package" "zip-util")))
    #+sbcl :depends-on
    #+sbcl ("drakma" "cl-ppcre" "cl-json" "babel"))
