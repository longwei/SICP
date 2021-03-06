#lang scheme
(define (sqrt x)
  (define (average a b) (/ (+ a b) 2))
  (define (square a) (* a a))
  (define (improve guess) (average guess (/ x guess)))
  (define (good-enough? guess) (< (abs (- (square guess) x)) 0.001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1)
  )

(sqrt 16) 