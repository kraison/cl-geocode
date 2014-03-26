(asdf:defsystem "cl-geocode"
  :depends-on ("cl-json" "babel"
               #+allegro (:require "aserve")
               #-allegro "drakma" #-allegro "cl-ppcre")
  :components ((:file "package")
               (:file "zip-util" :depends-on ("package"))
               (:file "geocode" :depends-on ("package" "zip-util"))))
