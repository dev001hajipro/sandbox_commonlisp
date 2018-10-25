(defclass monster ()
  (name strength
	dexterity
	constitution
        intelligence
	wisdom
	charisma))

(defun get-name (monster-instance)
  ; 'nameのようにシンボルでスロットを指定
  (slot-value monster-instance 'name))

(defun set-name (monster-instance name)
  (setf (slot-value monster-instance 'name) name))

(defvar *slime* nil)
(defvar *monsters* (make-many-monster))

(defun main ()
  (setf slime (make-instance 'monster))
  (format t "slime=~a~%" slime))

(defun make-many-monster ()
  (loop for i to 10 collect (make-instance 'monster)))

(defun square (n)
  (* n n))
