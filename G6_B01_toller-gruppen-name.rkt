#lang racket
;;; rechnet gradmaß ins bogenmaß um
(define (degrees->radians x) 
  (/ (* 2 pi x) 360)
)

;;; rechnet bogenmaß in gradmaß um
(define (radians->degrees x)
  (/ (* 360 x) (* 2 pi))
)


;;; Aufgabe 1.3
; rechnet Seemeilen in Kilometer um
(define (seemeile->kilometer nm)
  (* 1.852 nm)
)


;;; Aufgabe 2.1
; P : Geographische Breite
; L : Geographische Länge
(define (distanzAB Pa La Pb Lb)
  (seemeile->kilometer (* 60 
             (r->d (acos
                    (+
                     (* (sin Pa) (sin Pb))
                     (* (cos Pa) (cos Pb) (cos (- Lb La)))
                     )
                    )
             )
            )
  )
)
