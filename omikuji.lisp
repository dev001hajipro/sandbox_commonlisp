(defvar *a* 10)

(defun main ()
  (loop
     (setq *a* (+ *a* 1))
     (write *a*)
     (terpri)
     (when (> *a* 17) (return *a*))))

(main)
