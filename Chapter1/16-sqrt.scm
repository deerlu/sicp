;;; 1.6-sqrt.scm

(load "16-new-if.scm")
(load "16-sqrt-iter.scm")
(load "16-improve.scm")
(load "16-average.scm")
(load "16-good-enough.scm")

(define (sqrt x)
	(sqrt-iter 1.0 x))