(load "22-segment.scm")

;;; 用矩形的长和宽两条线段表示该矩形
(define (make-rectangular l-segment w-segment) (cons l-segment w-segment))
(define (l-segment x) (car x))
(define (w-segment x) (cdr x))
(define (length-of-rectangular x) (- (x-point (end-segment (l-segment x))) (x-point (start-segment (l-segment x)))))
(define (width-of-rectangular x) (- (y-point (end-segment (w-segment x))) (y-point (start-segment (w-segment x)))))

(define (perimeter-of-rectangular x)
	(* (+ (length-of-rectangular x) (width-of-rectangular x)) 2.0))

(define (area-of-rectangular x)
	(* (length-of-rectangular x) (width-of-rectangular x)))

(define rect (make-rectangular (make-segment (make-point 0 0) (make-point 5 0)) (make-segment (make-point 0 0) (make-point 0 3))))


;;; 用矩形的左下点和右上点表示该矩形
(define (make-rectangular left-down-point right-up-point) (cons left-down-point right-up-point))
(define (left-down-point x) (car x))
(define (right-up-point x) (cdr x))
(define (length-of-rectangular x) (- (x-point (right-up-point x)) (x-point (left-down-point x))))
(define (width-of-rectangular x) (- (y-point (right-up-point x)) (y-point (left-down-point x))))

(define rect (make-rectangular (make-point 0 0) (make-point 5 3)))
