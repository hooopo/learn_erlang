-module(e9_1).
-export([print_1_to_n/1]).

print_1_to_n(N) -> 
  List = lists:seq(1, N),
  lists:foreach(fun(I) -> io:format("~p~n", [I]) end, List).

