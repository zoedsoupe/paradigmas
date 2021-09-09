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

(define a '(1 2 3 4))
(define b '(5 6 7 8 9))

(define c
  (append
   (list* (car (reverse a)) (caddr b) (cadr a) (reverse (cddr b)))
   (list* (car a) (cadr b) (cdr a))))

(newline)
(display "LISTA A = ")
a
(newline)
(display "LISTA B = ")
b
(newline)
(display "LISTA C = ")
c
