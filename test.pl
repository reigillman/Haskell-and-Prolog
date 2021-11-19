notStartsWithX([H|_],X) :- H\=X.
twoTogether([A,B|_]) :- A=B.
twoTogether([H1,H2|T]) :- H1=H2; twoTogether([H2|T]).
fact(0,1).
fact(N,C) :- Nx is N-1, fact(Nx,Cx), C is N * Cx.
fib(0,1).
fib(1,1).
fib(X,C) :- Y is X-1, Z is X-2, fib(Y,Yans), fib(Z,Zans), C is Yans + Zans.