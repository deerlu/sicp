
;;; 递归版本
(define (product term a next b)
	(if (> a b)
		1
		(* (term a) (product term (next a) next b))))

(define (factorial n)
	(define (next-n x) (+ x 1))
	(define (f x) x)
	(product f 1 next-n n))

(define (pi-product n)
	(define (f x) (/ (* (- x 1) (+ x 1)) (square x)))
	(define (next x) (+ x 2))
	(* 4.0 (product f 3.0 next n)))

;;; 迭代版本
(define (product term a next b)
	(define (product-iter a result)
		(if (> a b)
			result
			(product-iter (next a) (* result (term a)))))
	(product-iter a 1))