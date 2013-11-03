#lang racket
;;;;;;;;;;;
;; 1.1 ;;
;;;;;;;;;;;
;;; rechnet gradmaß ins bogenmaß um
(define (degrees->radians x) 
  (/ (* 2 pi x) 360)
)

;;; rechnet bogenmaß in gradmaß um
(define (radians->degrees x)
  (/ (* 360 x) (* 2 pi))
)

;;;;;;;;;;;
;; 1.2 ;;
;;;;;;;;;;;
(define (my-acos a)
  (radians->degrees(atan (/ (sqrt (- 1 (* (cos a) (cos a))))
          (cos a))))
  )

;;;;;;;;;;;
;; 1.3 ;;
;;;;;;;;;;;
(define (nm->km l)
  (* 1.852 l)
)

;;;;;;;;;;;
;; 2.1 ;;
;;;;;;;;;;;
(define (distanzAB a1 a2 b1 b2) (
                                 
)