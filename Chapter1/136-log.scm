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

(define log-x
	(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0))

(define log-average-x
	(fixed-point (lambda (x) (* 0.5 (+ x (/ (log 1000) (log x))))) 2.0))