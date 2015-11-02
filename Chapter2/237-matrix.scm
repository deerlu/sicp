(load "236-accumulate-n.scm")

;;; 向量点积
(define (dot-product v w)
	(accumulate + 0 (map * v w)))

;;; 矩阵乘向量
(define (matrix-*-vector m v)
	(map (lambda (items) (dot-product v items)) m))

;;; 矩阵乘矩阵
(define (transpose mat)
	(accumulate-n cons () mat))

;;; 矩阵对称变换
(define (matrix-*-matrix m n)
	(let ((cols (transpose n)))
		(map (lambda (items) (matrix-*-vector cols items)) m)))	