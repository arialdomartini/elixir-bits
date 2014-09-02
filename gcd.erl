-module(gcd).
-export([gcd/2]).

gcd(A, B) when A == B ->
    A;
gcd(A, B) when A > B ->
    gcd(A-B, B);
gcd(A, B) when A < B ->
    gcd(B, B-A).
