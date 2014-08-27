-module(geom).
-export([area/0, area/1, area/2]).

area(Length, Width) ->
    Length * Width.
area(Length) ->
    area(Length,1).
area() ->
    area(1,1).
