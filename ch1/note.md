black-box abstraction
*primitive elements
  value of expression isjust itself.
  boolean #t, #f
  built-in procedures to manipulate primitive obj
  evaluating by looking up value in special table
*combination () for composition COND IF
*abstraction DEFINE

(define (<name> <para>) <body>)
(lambda (<name> <para>) <body>) special form
(define (<name> <para>) 
         <lambda>
         	)

(define (<name> <para>) 
         (lambda (<name> <para>) <body>)
         	)
parameters are internal to proc.

substition model
To Evaluate a express
  eval the operator to get proc
  eval the operands to get argumet
  apply the proc to the argument
    copy the body of the procedure
    substituting args supplied for the formal paramenters of the proc
    eval the resulting new body

(define (fizz x y z)
  (lambda (x y z) (+ x z)))

(if <predicate> <consequence><alternative>) 


how to design recursive
1. wishful thinking
   assume the desired proc exists
   BUT, only solves a smaller version of it.
2. decompose the problem
3. identify non-decomposable
    base case


Iteration:
program crash.
associative and commutative, the order don't matters.
pending operation make it grows


prove by induction

n=0, and n= n+1 is true, and true for all n
