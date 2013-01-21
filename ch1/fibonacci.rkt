#lang scheme
(define (fib N)
  (if (< N 2)
      N
      (+ (fib(- N 2)) (fib(- N 1)) ) ))

(fib 10)