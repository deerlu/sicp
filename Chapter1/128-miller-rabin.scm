(define (test-square a n)
	(if (and (not (= a 1)) (not (= a (- n 1)))
			 (= (remainder (square a) n) 1))
		0
		(square a)))

(define (expmod base exp m)
	(cond ((= exp 0) 1)
		  ((even? exp)
		  	(remainder (test-square (expmod base (/ exp 2) m) m) m))
		  (else
		  	(remainder (* base (expmod base (- exp 1) m))
		  		m))))

(define (fermat-test n)
	(define (try-it a)
		(= (expmod a (- n 1) n) 1))
	(try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
	(cond ((= times 0) true)
		  ((fermat-test n) (fast-prime? n (- times 1)))
		  (else false)))