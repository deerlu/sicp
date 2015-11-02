(define (list-ref items n)
	(if (= n 0)
		(car items)
		(list-ref (cdr items) (- n 1))))

(define (length items)
	(if (null? items)
		0
		(+ 1 (length (cdr items)))))

;;; 使用已有过程进行求解
(define (last-pair items)
	(list (list-ref items (- (length items) 1))))

;;; 直接求解
(define (last-pair items)
	(if (null? (cdr items))
		items
		(last-pair (cdr items))))