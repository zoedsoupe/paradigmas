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

(let ([ch "+"]
      [stack '()]
      [isop? (lambda (x) (cond
                           ["+" true]
                           ["-" true]
                           ["/" true]
                           ["*" true]
                           [else false]))]
      [iscloseparen? (lambda (x) (equal? x ")"))]
      [isopenparen? (lambda (x) (equal? x "("))]
      [precedence  (lambda (x) (cond
                                 [(or (equal? x "+") (equal? x "-")) 1]
                                 [(or (equal? x "*") (equal? x "/")) 2]
                                 [(equal? x "^") 3]
                                 [else 0]))])
  (cond
    [(isop? ch) (print "É um operador!")]
    [(empty? stack) (print "Stack vazia")]
    [(iscloseparen? ch) (print "É um fecha parênteses")]
    [(isopenparen? ch) (print "É um abre parênteses")]
    [(> (precedence ch "^")) (print "Precedência maior que elevado")]
    [(< (precedence ch "+")) (print "Precedência menor que soma")]
    [else (print "Não sei mais oq fazer")]))
