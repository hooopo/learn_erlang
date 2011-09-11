-module(e3_6).
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([H|T]) -> {Left, Right} = lists:partition(fun(X) -> X =< H end, T),
  quicksort(Left) ++ [H] ++ quicksort(Right).
