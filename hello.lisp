#| CommonLispの学習

|#

(defun say-hello ()
  "ハロー"
  (format t "Hello world!"))

(defun fib (n)
  "fibonacci number"
  (if (< n 2)
      n
      (+ (fib (- n 1))
	 (fib (- n 1)))))

(defun many (n)
  "複数の値を返す。タプルのようなもの"
  (values n (* n 2) (* n 3)))

; 関数呼び出し 
(funcall #'fib 30)
; 引数をリストにした関数呼び出し
(apply #'fib (list 30))

(defun add1 (n)
  (+ n 1))

