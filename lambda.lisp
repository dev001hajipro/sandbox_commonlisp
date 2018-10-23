#|
Common Lispではlamdaの書き方にいろいろな方法があるので学びます。
|#

'(lambda (x) (+ x 1))

(defun make-adder (x)
  ; functionによりクロージャー作成
  (function (lambda (y) (+ x y))))

(defun make-adder2 (x)
  ; lambdaマクロは、展開されて上記(functionと同じになります。
  (lambda (y) (+ x y)))

#| funcallでクロージャーを呼び出す
((make-adder 5) 3)のように呼び出せない。
|#
(defun test-make-adder ()
  (make-adder 5)
  (funcall (make-adder 5) 3))

(defun do-lambda ()
  "ラムダ式を直接呼び出すサンプル"
  ((lambda (n) (+ n 1)) 3))
