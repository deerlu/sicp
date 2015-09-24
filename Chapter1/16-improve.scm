;;; 1.6-improve.scm

(define (improve guess x)
	(average guess (/ x guess)))