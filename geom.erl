-module(geom).
-export([area/3]).

area(rectangle, Length, Width) ->
    Length * Width;
area(ellipse, A, B) ->
    math:pi() * A * B;
area(triangle, Base, Height) ->
    Base * Height / 2.
