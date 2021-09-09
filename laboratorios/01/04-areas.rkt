;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: Zoey de Souza Pessanha

;;;;;;;;;;;;;;;;   Escolha a linguagem "Determine language from source"
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
;;
;;
;; (define   (nomeFuncao   parametros)  definicao  )
;;
;; AREAS
;; ---------------------------------------------------
(define (area-circulo r) 
  (* 3.14 (* r r)))

(define (area-triangulo b h)
  (/ (* b h) 2))

(define (area-disco interno externo)
  (- (area-circulo externo)
     (area-circulo interno)))
;
;--------------------------------------------------------------

(display "Circulo de raio 18   AREA = ")
(area-circulo 18)

(display "Triangulo base=10, altura=15  AREA =   ")
(area-triangulo 10 15)

(display "Disco raio menor=12, raio maior=20  AREA = ")
(area-disco 12 20)
