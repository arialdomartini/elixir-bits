-module(powers).
-export([raise/2]).

raise(_, 1) ->
    1;
raise(X, N) ->
    X * raise(X, N-1).
