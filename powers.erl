-module(powers).
-export([raise/2]).

raise(X, N) when N < 0 -> 
    1/raise(X, -N);
raise(_, 1) ->
    1;
raise(X, N) ->
    X * raise(X, N-1).
