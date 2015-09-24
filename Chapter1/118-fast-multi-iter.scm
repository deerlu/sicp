(define (fast-multi a b)
	(fast-multi-iter a b 0))

(define (fast-multi-iter a b n)
	(cond ((= b 0) n)
		  ((even? b) (fast-multi-iter (* a 2) (/ b 2) n))
		  (else (fast-multi-iter a (- b 1) (+ n a)))))

(define (even? n)
	(= (remainder n 2) 0))