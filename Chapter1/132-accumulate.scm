;;; 递归版本
(define (accumulate combiner null-value term a next b)
	(if (> a b)
		null-value
		(combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
	(define (combiner x y) (+ x y))
	(define null-value 0)
	(accumulate combiner null-value term a next b))

(define (product term a next b)
	(define (combiner x y) (* x y))
	(define null-value 1)
	(accumulate combiner null-value term a next b))

;;; 迭代版本
(define (accumulate combiner null-value term a next b)
	(define (accumulate-iter x result)
		(if (> x b)
			result
			(accumulate-iter (next x) (combiner (term x) result))))
	(accumulate-iter a null-value))