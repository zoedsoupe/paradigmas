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

(if (eqv? 'true 'false)
    (print "É, é igual")
    (print "I, não é igual"))

(let* ([xs '(1 2 3)]
      [ys '(5 4 3 2 1)]
      [lxs (length xs)]
      [lys (length ys)])
  (if (< lxs lys)
     (+ lxs lys)
     (- lxs lys)))
