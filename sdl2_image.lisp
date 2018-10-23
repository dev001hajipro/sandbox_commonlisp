(eval-when (:compile-toplevel :load-toplevel :execute)
  (ql:quickload :sdl2)
  (ql:quickload :sdl2-image))

(require :sdl2)
(require :sdl2-image)

(defun main ()
  (sdl2:with-init (:everything)
    (sdl2:with-window (window :title "sdl2 and image" :flags '(:shown))
      (sdl2-image:init  '(:jpg))
      (let ((surface (sdl2:get-window-surface window))
	    (image (sdl2-image:load-image "sample.jpg")))
	(sdl2:blit-surface image nil surface nil)
	(sdl2:update-window window)
	(sdl2:delay 2000)
        (sdl2:free-surface image)
	(sdl2-image:quit)))))

(main)
