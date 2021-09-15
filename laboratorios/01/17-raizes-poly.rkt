;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021 
;; Aluno: Zoey de Souza Pessanha
;;
#lang racket  ;; define a linguagem default ===> Habilite Advanced Student
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Zoey de Souza Pessanha ")
(newline)
;;;
;;
;;  Aplicações:  raizes do polinomio Ax^2 + Bx + C = 0
;; ---------------------------------------------------

(define (poly2grau a b c)
  (cond 
    [(= a 0) 'degenerada]
    [(< (* b b) 
        (* 4 a c)) 
     'NenhumaOuComplexa]
    [(= (* b b) 
        (* 4 a c)) 
     (/ (- b) (* 2 a))]
    [(> (* b b) 
        (* 4 a c)) 
     (list (/ (+ (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)) 
           (/ (- (- b) 
                 (sqrt (- (* b b) (* 4 a c)))) 
              (* 2 a)))])) 

;;--------------------------------------
(newline)
;; EXEMPLOS 
(display "X^2 + 2X + 1 = 0 , Raizes = ")
(poly2grau 1 2 1) 
(display "deveria ser -1")
(newline)

(display "3X^2 + 4X + 1 = 0 , Raizes = ")
(poly2grau 3 4 1) 
(display "deveria ser -1/3 -1")
(newline)

(newline)
(display "2X^2 + 4X + 3 = 0 , Raizes = ")
(poly2grau 2 4 3) 
(display "deveria ser Nenhuma")
(newline)

(newline)
(display "X^2 -1 = 0 , Raizes = ")
(poly2grau 1 0 -1) 
(display "deveria ser 1 e -1")
(newline)

(newline)
(display "2X^2 +4X +2 = 0 , Raizes = ")
(poly2grau 2 4 2) 
(display "deveria ser -1")
(newline)

(newline)
(display "X + 1 = 0 , Raizes = ")
(poly2grau 0 1 1) 
(display "deveria ser: Degenerada")
(newline)
