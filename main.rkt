#lang lazy
(require "datatype.ss"
         (prefix-in t: plai)
         (only-in racket/local local)
         (prefix-in core: racket/base)
         racket/contract/base)
(provide (except-out (all-from-out lazy) begin error)
         (all-from-out "datatype.ss")
         (rename-out [core:begin begin]
                     [t:error error])
         local
         listof)

(define-syntax-rule (test c e)
  (t:test (!! (equal? c e)) #t))
(define-syntax-rule (test/exn c e)
  (t:test/exn (!! (equal? c c)) e))
(define-syntax-rule (test/pred c e)
  (t:test/pred (!! (equal? (e c) #t)) #t))
(define-syntax-rule (print-only-errors v)
  (!! (t:print-only-errors v)))

(provide test test/exn test/pred print-only-errors)
