(eval-when (:compile-toplevel :load-toplevel :execute)
  (ql:quickload :sdl2)
  (ql:quickload :sdl2-image))

(require :sdl2)
(require :sdl2-image)

(defparameter *width* 640)
(defparameter *height* 480)

(defun main ()
  (sdl2:with-init (:everything)
    (sdl2:with-window (window :title "sdl2 key input" :w *width* :h *height* :flags '(:shown))
      (sdl2-image:init '(:jpg))
      (let ((surface (sdl2:get-window-surface window))
	    (image (sdl2-image:load-image "sample.jpg"))
	    (rect (sdl2:make-rect 0 0 *width* *height*)))
	(sdl2:with-event-loop (:method :poll)
	  (:keyup (:keysym keysym)
		  (when (sdl2:scancode= (sdl2:scancode-value keysym) :scancode-escape)
		    (sdl2:push-event :quit))) ; create :quit event and push it.
	  (:idle ()
		 (progn (sdl2:blit-scaled image nil surface rect)
			(sdl2:update-window window)))
	  (:quit () t))))))

