;;; 直接定义
(define (square-tree tree)
	(cond ((null? tree) ())
		  ((not (pair? tree)) (square tree))
		  (else (cons (square-tree (car tree))
		  			  (square-tree (cdr tree))))))

;;; 使用map和递归定义
(define (square-tree tree)
	(map (lambda (sub-tree)
			(if (pair? sub-tree)
				(square-tree sub-tree)
				(square sub-tree)))
		 tree))