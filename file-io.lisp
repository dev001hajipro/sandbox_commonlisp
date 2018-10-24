(defun my-write ()
  (with-open-file (out "/tmp/a.txt" :direction :output :if-exists :supersede)
    (write-line "hello" out)
    (format out "~:d~%" 9999)))

(defun my-read()
  (with-open-file (in "/tmp/a.txt")
    (loop for line = (read-line in nil)
       while line
	 do (write-line line))))
