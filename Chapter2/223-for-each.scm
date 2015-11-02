(define (for-each proc items)
	(if (not (null? items))
		(and (proc (car items)) (for-each proc (cdr items)))))