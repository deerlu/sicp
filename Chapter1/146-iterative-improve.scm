(define (iterative-improve ge? improve)
	(lambda (x)
		(define (iter guess)
			(if (ge? guess)
				guess
				(iter (improve guess))))
		(iter x)))

(define (average a b)
	(/ (+ a b) 2.0))

(define (sqrt x)
	(define (improve guess)
		(average guess (/ x guess)))
	(define (good-enough? guess)
		(< (abs (- (square guess) x)) 0.001))
	((iterative-improve good-enough? improve) 0.1))

(define (fixed-point f x)
	(define (good-enough? guess)
		(< (abs (- guess (f guess))) 0.001))
	(define (improve guess)
		(f guess))
	((iterative-improve good-enough? improve) x))