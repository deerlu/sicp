(load "233-map-append-length.scm")

(define (horner-eval x coefficient-sequence)
	(accumulate (lambda (this-coeff higher-terms) (+ (* higher-terms x) this-coeff))
				0
				coefficient-sequence))