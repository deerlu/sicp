(define (is-carm? n)
	(is-carm-iter n 1))

(define (is-carm-iter n a)
	(cond ((= n a) true)
		  ((carm-test n a) (is-carm-iter n (+ a 1)))
		  (else false)))

(define (carm-test n a)
	(= (expmod a n n) a))

(define (expmod base exp m)
	(cond ((= exp 0) 1)
		  ((even? exp)
		  	(remainder (square (expmod base (/ exp 2) m))
		  		m))
		  (else
		  	(remainder (* base (expmod base (- exp 1) m))
		  		m))))