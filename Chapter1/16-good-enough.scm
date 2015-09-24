;;; 1.6-good-engough.scm

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))