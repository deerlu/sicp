;;; 迭代法
(define (reverse items)
	(define (reverse-iter items result)
		(if (null? items)
			result
			(reverse-iter (cdr items) (cons (car items) result))))
	(reverse-iter items ()))