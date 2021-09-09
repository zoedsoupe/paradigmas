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

(define (inc x)
  "Returns the sucessor of X"
  (+ 1 x))

(define (all f xs)
  "Returns true if all elements in XS
  satisfies a function F
  F :: a -> Bool
  XS :: [a] -> Bool"
  (let ([check (lambda (x acc) (and (f x) true))])
        (foldr check false xs)))
