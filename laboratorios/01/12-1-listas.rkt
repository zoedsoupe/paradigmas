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

(define xs '(1 2 3 4 5))

(newline)
(display "LISTA = ")
xs
(newline)
(display "PRIMEIRO ELEM = ")
(car xs)
(newline)
(display "ÚLTIMO ELEM = ")
(car (reverse xs))
(newline)
(display "TAM = ")
(length xs)
(newline)
(display "LISTA2 = ")
(print (append xs '(6 7)))
