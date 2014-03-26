(asdf:defsystem "cl-geocode"
  :depends-on
  #+allegro ((:require "aserve"))
  #-allegro ("drakma" "cl-ppcre" "cl-json" "babel")
  :components ((:file "package")
               (:file "zip-util" :depends-on ("package"))
               (:file "geocode" :depends-on ("package" "zip-util"))))
