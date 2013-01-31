(define simple-log (lambda (n) 
                     (cond ((= n 1) 0)
                           ((= n 2) 1)
                           (else (+ 1 (simple-log (/ n 2)) ))
                     )))
  
  
  (simple-log 8)
  (simple-log 16)
  (simple-log 32)