SICP
====
http://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/


self-learn
http://icampustutor.csail.mit.edu/6.001-public/tutor.cgi

Key of DP:
1. identify a small number of subproblems
2. can quickly correctly solve "larger" subproblems given the solutions to smaller subproblems.[well defined solution]
what is the right subproblem?
structure of optimal solution.


Knapsack problem:
i, use only the first items
x, <= capacity
for i 1~n
  for x 0 ~ w;
V(i,x) = max{
           V(i-1,x)  
	       Vi + V(i-1, x-wi)
          }


todo: reconstruction for knapsack

sequence alignment:
cond1; xm, ym match
cond2; xm with a gap
cond3: ym with a gap

for i 1~m
  for j 1~n
    A[i,j] = A[i-1, j-1] + matchPoint
             A[i-1, j] + xwithAGap
             A[i, j-1] + ywithAGap





