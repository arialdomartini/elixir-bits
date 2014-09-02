-module(geom).
-export([area/1, area/3]).

area({Shape, A, B}) ->
    area(Shape, A, B).

area(Shape, A, B)  when A >= 0, B >= 0  ->
    case Shape of
        rectangle -> A * B;
        triangle  -> A * B /2 ;
        ellipse   -> math:pi() * A * B;
        _         -> {error, not_implemented}
    end.
