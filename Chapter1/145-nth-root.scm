(define tolerance 0.00001)

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(display-value guess)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				(begin
					(display-value next)
					next)
				(try next))))
	(try first-guess))

(define (display-value value)
	(display value)
	(newline))

(define (fixed-point-of-transform g transform guess)
	(fixed-point (transform g) guess))

(define (average-damp f)
	(lambda (x) (/ (+ x (f x)) 2.0)))

(define (compose f g)
	(lambda (x) (f (g x))))

(define (repeated f n)
	(cond ((= n 1) f)
		  ((even? n) (repeated (compose f f) (/ n 2)))
		  (else (compose f (repeated f (- n 1))))))

(define (nth-power y n)
	(define (nth-power-iter result i)
		(if (= i n)
			result
			(nth-power-iter (* result y) (+ i 1))))
	(nth-power-iter 1 0))

(define (nth-root x n t)
	(fixed-point-of-transform (lambda (y) (/ x (nth-power y (- n 1)))) (repeated average-damp t) 1.0))
