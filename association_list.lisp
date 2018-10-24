(defparameter *my-alist*
  '((one . 1)
    (two . 2)
    (three . 3)))

(cons (cons 'four 4) *my-alist*)

(defparameter *alist2*
  (acons 'four 4 *my-alist*))

(assoc 'two *my-alist*)
