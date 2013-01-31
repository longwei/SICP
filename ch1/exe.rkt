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