;;; (((double (double double)) inc) 5) = 
;;; ((double (double (double (double inc)))) 5)
(define (double f)
	(lambda (x) (f (f x))))
(define (inc x)
	(+ x 1))