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

(define (go n acc)
  (if (< n 2)
      acc
      (go (- n 1) (* n acc))))

(define (fatorial n) (go n 1))
