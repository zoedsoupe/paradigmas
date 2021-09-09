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

(define xp (cons 'a 'b))
(define yp (cons 'c 'd))

(newline)
(display "Par XP = ")
xp
(newline)
(display "PRIMEIRO ELEMENTO = ")
(car xp)
(newline)
(display "ÚLTIMO ELEMENTO = ")
(cdr xp)
(newline)
(display "Par yp = ")
yp
(newline)
(display "PRIMEIRO ELEMENTO = ")
(car yp)
(newline)
(display "ÚLTIMO ELEMENTO = ")
(cdr yp)
