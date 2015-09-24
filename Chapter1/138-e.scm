(load "137-cont-frac.scm")

(define (cal-e)
	(define (d i)
		(if (= (remainder (- i 2) 3) 0)
			(* 2.0 ( + (/ (- i 2) 3) 1))
			1.0))
	(define (n i) 1.0)
	(cont-frac-it n d 10))