;;pascal
(define (fact n) 
  (if (= n 0) 1
      (* n (fact (- n 1))))
)
(define pascal 
  (lambda (j n)
    (/ (fact n) (* (fact (- n j))  (fact j) ) )
      )
)  

(fact 5)
(pascal 2 5)