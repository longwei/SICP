;;ex 1.2 

(/  (+ 5
	   4
	   (- 2 (- 3 (+ 6 (/ 4 5))))) 
	(* 3
		(- 6 2)
		(- 2 7)))

;;  ex1.3: Define a procedure that takes three numbers as arguments  
 ;;  and returns the sum of the squares of the two larger numbers.
 (define (squares x) (* x x))
 (define (sos x y) (+ (squares x) (squares y)))
 (define (larger-two-sos x y z) 
 	(cond ((= (min x y z) x) (sos y z))
 	      ((= (min x y z) y) (sos x z))
 	      ((= (min x y z) z) (sos x y))))
 
 (larger-two-sos 1 3 4)
 ;;expect 5
 
 
 ;;ex1.4
 ;;if return + - operator
 
 
 ;;ex1.5
 ;;using normal order eval, which is fully expand and then reduce, will infinite loop
 ;;while applicative-order eval, will short-circuit and produce 0
 
 
 ;;ex1.6
 ;;as new-if use normal order evluation, the rewritten sqrt=iter 
 ;;never terminates.
 
 ;;ex1.7
 ;;use relative value
 (define (good-enough? guess x)
   (< (abs (-(square guess) x)) (* 0.001 guess)))
 
 ;;ex1.8
(define (square x)(* x x)) 
(define (cube x) (* x x x))

(define (good-enough? guess x)
   (< (abs (-(cube guess) x)) (* 0.001 guess)))
 (define (improve guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3) ) 

 (define (cube-root-iter guess x)
 	(if (good-enough? guess x) 
 		guess
 		(cube-root-iter (improve guess x) x)))
 
 (define (cube-root x) (cube-root-iter 1 x))

 ;;ex 1.9
 ;;first one is recursive, 
 ;;second is iterative

 ;;ex 1.10
 ;;normal

 ;;ex 1.11
 (define (f n)
 	(if (< n 3) n 
 		(+ ( f (- n 1)) (* 2 ( f ( - n 2))) (* 3 (f (- n 3))))
 		)
 	)

 (foo 7)
 ;;iterative
  (define (foo n) 
   (define (iter a b c count) 
     (if (= count 3) 
       (+ c (* 2 b) (* 3 a))
       (iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))) 
   (iter 0 1 2 n)) 
;;moving 3slot rule -> and fill out the form
