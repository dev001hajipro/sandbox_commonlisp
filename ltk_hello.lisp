(eval-when (:compile-toplevel :load-toplevel :execute)
  (ql:quickload :ltk))

(defun main ()
  (ltk:with-ltk ()
  (let ((button1
	 (make-instance 'ltk:button
			:master nil
			:text "押して!"
			:command (lambda ()
				   (format t "Hello World~&")))))
    (ltk:pack button1))))
