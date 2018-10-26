(defstruct player
  (name "nameless")
  (age 16)
  (strength 10)

(defun main ()
  (let ((p1 (make-player :name "tom" :age 16 :strength 5)))
    (format t "isPlayer=~a~%" (player-p p1))
    (format t "name=~a~%" (player-name p1))
    (format t "type check: isPlayer?=~a~%" (typep p1 'player))
    (setf (player-name p1) "rara")))
