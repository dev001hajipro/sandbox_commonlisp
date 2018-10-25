(defun reset-guess-number (&optional (n 10))
  (setf *guess-number* (random n)))

(defvar *guess-number* nil)

(defun check-correct (n)
  (cond
    ((< n *guess-number*)
     (print "small"))
    ((> n *guess-number*)
     (print "big"))
    ((= n *guess-number*)
     (format t "number is ~a~%" n)
     (print "reset number")
     (reset-guess-number))))

(defun main ()
  (reset-guess-number)
  (loop
     (print "q is Quit game. r is reset number")
     (print 'guess-number>)
       (let ((line (read)))
	 (cond
	   ((equal line 'Q)
	    (return nil))
	   ((equal line 'R)
	    (reset-guess-number))
	   ((numberp line)
	    (check-correct line)
	    (print line))))))
