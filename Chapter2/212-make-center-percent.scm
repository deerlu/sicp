(load "27-upper-bound-lower-bound.scm")

(define (make-center-percent c p)
	(make-interval (- c (* c p)) (+ c (* c p))))

(define (percent i)
	(/ (- (upper-bound i) (lower-bound i)) (+ (lower-bound i) (upper-bound i))))