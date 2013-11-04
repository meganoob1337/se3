#lang racket
;;;; 2brinkho, 2mallien, 1feil
;;; Aufgabe 1.1
;; rechnet gradmaß ins bogenmaß um
;@param x: number zahl in grad
(define (degrees->radians x) 
  (/ (* 2 pi x) 360)
)

;; rechnet bogenmaß in gradmaß um
;@param x: number zahl in bogenmaß
(define (radians->degrees x)
  (/ (* 360 x) (* 2 pi))
)

;;; Aufgabe 1.2
;; berechnet den arccos eines cos
;@param a: number
(define (my-acos a)
  (radians->degrees 
   (atan (/ 
          (sqrt (- 1 (*  a  a)))
           a))
   ))

;;; Aufgabe 1.3
;; rechnet seemeilen in kilometer um
;@param l: number seemeilen
(define (nm->km l)
  (* 1.852 l)
)


;;; Aufgabe 2.1
;; berechnet die entfernung zwischen zwei punkten
;@param Pa: number grad breite punkt A
;@param La: number grad länge pubkt A
;@param Pb: number grad breite punkt B
;@param Lb: number grad länge pubkt B
(define (distanzAB Pa La Pb Lb)
                    (nm->km (* 60 (my-acos (+
                     (* (sin (degrees->radians Pa)) 
                         (sin (degrees->radians Pb)))
                     (* (cos (degrees->radians Pa)) 
                         (cos (degrees->radians Pb)) 
                         (cos (degrees->radians(- Lb La))))
                    )
                   )))
)

; distanz oslo hongkong
(display "Oslo -> Hongkong\n")
(distanzAB 59.93 10.75 22.20 114.10)
; distanz san francisco honolulu
(display "San Francisco->Honolulu\n")
(distanzAB 37.75 -122.45 21.32 -157.83)
;distanz osterinsel lima
(display "Osterinsel->Lima\n")
(distanzAB -27.10 -109.40 -12.10 -77.05)

;;; Aufgabe 2.2

;;; Aufgabe 2.3
;;; 2.3.1
;; gibt den kurswinkel in symbolische angabe für die himmelsrichtung aus
;@param x: number grad
(define (grad->himmelsrichtung x)
  (cond [(= x 0) "N"]
            [(= x 22.5) "NNE"]
            [(= x 45) "NE"]
            [(= x 67.5) "ENE"]
            [(= x 90) "E"]
            [(= x 112.5) "ESE"]
            [(= x 135) "SE"]
            [(= x 157.5) "SSE"]
            [(= x 180) "S"]
            [(= x 202.5) "SSW"]
            [(= x 225) "SW"]
            [(= x 247.5) "WSW"]
            [(= x 270) "W"]
            [(= x 292.5) "WNW"]
            [(= x 315) "NW"]
            [(= x 337.5) "NNW"]
            [else "not defined"]
       )
  )

;;; 2.3.2
;; gibt eine himmelsrichtung in grad aus
;@param x: string himmelsrichtung
(define (himmelsrichtung->grad x)
  (cond [(equal? x "N") 0]
            [(equal? x "NNE") 22.5]
            [(equal? x "NE") 45]
            [(equal? x "ENE") 67.5]
            [(equal? x "E") 90]
            [(equal? x "ESE") 112.5]
            [(equal? x "SE") 135]
            [(equal? x "SSE") 157.5]
            [(equal? x "S") 180]
            [(equal? x "SSW") 202.5]
            [(equal? x "SW") 225]
            [(equal? x "WSW") 247.5]
            [(equal? x "W") 270]
            [(equal? x "WNW") 292.5]
            [(equal? x "NW") 315]
            [(equal? x "NNW") 337.5]
            [else "not defined"]
            )
  )