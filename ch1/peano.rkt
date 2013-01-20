#lang scheme
(define (plus x y)
        (if (= x 0)
            y
        (plus (- 1 x) (+ 1 y))))
(plus 3 4)