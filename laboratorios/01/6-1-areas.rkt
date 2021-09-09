;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: Zoey de Souza Pessanha
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------

(display "  UENF-CCT-LCMAT-CC, 2021")
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Zoey de Souza Pessanha ")
(newline)
(newline)

; ------------------------------------------------

(define (area-quadrado l) (* l l))

(define (area-trapezio bme bma h)
  (let ((bases (+ bme bma)))
    (/ (* bases h) 2)))

(define (area-pol-regular p a)
  (/ (* p a) 2))

; ------------------------------------------------

(display "Quadrado de LADO 90   AREA = ")
(area-quadrado 90)

(display "Trapezio de BASE_MENOR = 5  BASE_MAIOR = 10  ALTURA = 15   AREA = ")
(area-trapezio 5 10 15)

(display "Polígono regular de SEMI_PERIMETRO = 42  APÓTEMA = 12   AREA = ")
(area-pol-regular 42 12)
