(define (same-parity x . y)
	(define xIsOdd (odd? x))
	(define (same-parity-with-x items)
		(cond ((null? items) ())
			  ((or (and xIsOdd (odd? (car items))) (and (not xIsOdd) (even? (car items))))
			  	(cons (car items) (same-parity-with-x (cdr items))))
			  (else
			  	(same-parity-with-x (cdr items)))))
	(cons x (same-parity-with-x y)))

