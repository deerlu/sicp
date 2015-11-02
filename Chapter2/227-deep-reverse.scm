
(define (deep-reverse items)
	(define (reverse-iter items result)
		(cond ((null? items) result)
			  ((pair? (car items)) (reverse-iter (cdr items) (cons (deep-reverse (car items)) result)))
			  (else (reverse-iter (cdr items) (cons (car items) result)))))
	(reverse-iter items ()))

(define x (list (list 1 2) (list 3 4)))