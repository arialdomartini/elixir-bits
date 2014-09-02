-module(geom).
-export([area/1, area/3]).

area({Shape, A, B}) ->
    area(Shape, A, B).

area(rectangle, Length, Width)  when Length >= 0, Width >= 0  -> Length * Width;
area(ellipse, A, B)             when A >= 0, B >= 0           -> math:pi() * A * B;
area(triangle, Base, Height)    when Base >= 0, Height >= 0   -> Base * Height / 2;
area(_, _, _) -> 0.
