-module(e9_1).
-export([print_1_to_n/1, filter/2, print_even/1, concact/1]).

print_1_to_n(N) -> 
  List = lists:seq(1, N),
  lists:foreach(fun(I) -> io:format("~p~n", [I]) end, List).

filter(N, List) -> 
  lists:filter(fun(X) -> X =< N end, List).

print_even(N) -> 
  lists:foreach(fun(X) -> io:format("~p~n", [X]) end,
    lists:filter(fun(X) -> X rem 2 == 0 end,
      lists:seq(1, N)
    )
  ).

concact(List) -> 
  lists:foldl(fun(X, Sum) -> X ++ Sum end, [], List).
