#| association list
|#
(defparameter *fruits*
  '((Apple (5))
    (Melon (10))
    (Orange (29))))

(defun add-banana ()
  "add cons"
  (let ((banana-data (cons 'Banana '(3))))
    (cons banana-data *fruits*)))

(defun add-banana2 (n)
  "use acons function."
  (acons 'Banana (list n) *fruits*))

(defun get-apple ()
  (assoc 'Apple *fruits*))

#|
plist
|#
