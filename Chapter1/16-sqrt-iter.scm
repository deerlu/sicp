;;; 1.6-sqrt-iter.scm

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))