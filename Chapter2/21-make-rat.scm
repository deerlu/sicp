(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))


(define (make-rat n d)
	(define g (gcd n d))
	(if (< d 0)
		(cons (/ (- n) g) (/ (- d) g))
		(cons (/ n g) (/ d g))))