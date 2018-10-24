(defun add1 (n)
  "一般的な関数"
  (+ n 1))

(defun print-args (a b c d)
  (format t "a=~a,b=~a,c=~a,d=~a" a b c d))

(defun test-print-args ()
  (print-args 1 2 3 4))

#|
オプショナルパラメータとデフォルト値
|#
(defun make-monster (name &optional (health 10) (strength 10))
  (format t "name=~a, health=~a, strength=~a~%" name health strength))

(defun test-show-monsters ()
  (make-monster "slime")
  (make-monster "goblin" 50)
  (make-monster "dragon" 200 300))
  
; キーワードパラメータ
(defun make-player (name &key (strength 10) (constitution 10) (sanity 5))
  (format t "name=~a, str=~a, con=~a, san=~a~%" name strength constitution sanity))

(defun test-make-player ()
  (make-player "tom")
  (make-player "john" :strength 99 :constitution 8 :sanity "a")) 
			  
