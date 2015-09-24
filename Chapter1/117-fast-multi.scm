(define (fast-multi a b)
	(cond ((= b 0) 0)
		  ((even? b) (fast-multi (* a 2) (/ b 2)))
		  (else (+ a (fast-multi a (- b 1))))))

(define (even? n)
	(= (remainder n 2) 0))