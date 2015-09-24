(define (sum term a next b factor n)
	(if (> a b)
		0
		(+ (* (factor n) (term a)) (sum term (next a) next b factor (+ n 1)))))

(define (simpson f a b n)
	(define h (/ (- b a) n))
	(define (next-a x) (+ x h))
	(define (factor y)
		(cond ((= y 0) 1)
			  ((= y n) 1)
			  ((even? y) 2)
			  (else 4)))
	(* (/ h 3.0) (sum f a next-a b factor 0)))

(define (cube x) (* x x x))

(define (even? n)
	(= (remainder n 2) 0))