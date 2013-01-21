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

substition model
To Evaluate a express
  eval the operator to get proc
  eval the operands to get argumet
  apply the proc to the argument
    copy the body of the procedure
    substituting args supplied for the formal paramenters of the proc
    eval the resulting new body

Iteration and recursion
program crash.

