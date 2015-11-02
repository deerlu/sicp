;;; 直接定义
(define (tree-map proc tree)
	(cond ((null? tree) ())
		  ((not (pair? tree)) (proc tree))
		  (else (cons (tree-map proc (car tree))
		  			  (tree-map proc (cdr tree))))))

;;; 使用map和递归定义
(define (tree-map proc tree)
	(map (lambda (sub-tree)
			(if (pair? sub-tree)
				(tree-map proc sub-tree)
				(proc sub-tree)))
		 tree))