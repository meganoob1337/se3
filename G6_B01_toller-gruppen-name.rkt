#lang racket
;;; Aufgabe 1.1
;; rechnet gradmaß ins bogenmaß um
(define (degrees->radians x) 
  (/ (* 2 pi x) 360)
)

;; rechnet bogenmaß in gradmaß um
(define (radians->degrees x)
  (/ (* 360 x) (* 2 pi))
)

;;; Aufgabe 1.2
;; berechnet den arccos eines winkels a
(define (my-acos a)
  (radians->degrees(atan (/ (sqrt (- 1 (* (cos a) (cos a))))
          (cos a))))
  )

;;; Aufgabe 1.3
;; rechnet seemeilen in kilometer um
(define (nm->km l)
  (* 1.852 l)
)

;;; Aufgabe 2.1
; P : Geographische Breite
; L : Geographische Länge
(define (distanzAB Pa La Pb Lb)
  (nm->km (* 60 
             (my-acos
                    (+
                     (* (sin Pa) (sin Pb))
                     (* (cos Pa) (cos Pb) (cos (- Lb La)))
                    ))))
)
