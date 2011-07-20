-module(array).
-export([my_length/1]).

my_length([]) -> 0;
my_length([First|Rest]) -> 1 + my_length(Rest).
