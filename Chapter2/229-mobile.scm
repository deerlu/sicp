(define (make-mobile left right)
	(list left right))

(define (make-branch length structure)
	(list length structure))

(define (left-branch mobile)
	(car mobile))

(define (right-branch mobile)
	(car (cdr mobile)))

(define (branch-length branch)
	(car branch))

(define (branch-structure branch)
	(car (cdr branch)))

(define (total-weight mobile)
	(cond ((null? mobile) 0)
		  ((not (pair? mobile)) mobile)
		  (else (+ (total-weight (branch-structure (left-branch mobile)))
		  		   (total-weight (branch-structure (right-branch mobile)))))))

(define (branch-weight mobile)
	(if (not (pair? (branch-structure mobile)))
		(branch-structure mobile)
		(total-weight (branch-structure mobile))))

(define (balanced-branch? branch)
	(if (not (pair? (branch-structure branch)))
		#t
		(balanced-mobile? (branch-structure branch))))

(define (balanced-mobile? mobile)
	(if (= (* (branch-length (left-branch mobile)) (branch-weight (left-branch mobile)))
		   (* (branch-length (right-branch mobile)) (branch-weight (right-branch mobile))))
		(and (balanced-branch? (left-branch mobile)) (balanced-branch? (right-branch mobile)))
		#f))
