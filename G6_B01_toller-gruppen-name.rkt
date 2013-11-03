#lang racket
;;; rechnet gradmaß ins bogenmaß um
(define (degrees->radians x) 
  (/ (* 2 pi x) 360)
)

;;; rechnet bogenmaß in gradmaß um
(define (radians->degrees x)
  (/ (* 360 x) (* 2 pi))
)


;;; rechnet Seemeilen in Kilometer um
(define (seemeile->kilometer nm)
  (* 1.852 nm)
)
