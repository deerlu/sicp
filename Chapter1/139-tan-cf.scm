;;;递归
(define (tan-cf x k)
	(define (tan-cf-re f i)
		(if (= i k)
			(/ (square x) (f k))
			(/ (square x) (- (f i) (tan-cf-re f (+ i 1))))))
	(/ x (- 1.0 (tan-cf-re (lambda (i) (+ 1.0 (* 2.0 (- i 1)))) 2))))