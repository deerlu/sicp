(define (make-interval a b) (cons a b))
(define (upper-bound z)
	(let ((a (car z))
		  (b (cdr z)))
		(if (> a b)
			a
			b)))
(define (lower-bound z)
	(let ((a (car z))
		  (b (cdr z)))
		(if (> a b)
			b
			a)))