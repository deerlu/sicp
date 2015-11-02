(load "233-map-append-length.scm")

(define (count-leaves t)
	(accumulate (lambda (x y) (+ y 1)) 0 (enumerate-tree t)))

(define (count-leaves t)
	(accumulate + 0 (map (lambda (x) 1) (enumerate-tree t))))