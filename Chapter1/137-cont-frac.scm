;;;递归
(define (cont-frac n d k)
	(define (cont-frac-re x)
		(if (= x k)
			(/ (n k) (d k))
			(/ (n x) (+ (d x) (cont-frac-re (+ x 1))))))
	(cont-frac-re 1))

(define (cont)
	(/ 1.0 (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10)))

;;;迭代
(define (cont-frac-it n d k)
	(define (cont-frac-iter value i)
		(if (= i 0)
			value
			(cont-frac-iter (/ (n i) (+ (d i) value)) (- i 1))))
	(cont-frac-iter 0 k))

(define (cont-iter)
	(/ 1.0 (cont-frac-it (lambda (i) 1.0) (lambda (i) 1.0) 10)))