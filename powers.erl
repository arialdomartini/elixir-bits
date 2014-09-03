-module(powers).
-export([raise/2]).

raise(X, N) when N < 0 -> 1/raise(X, -N);
raise(X, N)            -> raise_acc(X, N, 1).

raise_acc(_, 1, A)     -> A;
raise_acc(X, N, A)     -> raise_acc(X, N-1, X * A).
