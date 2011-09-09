-module(e3_3).
-export([print_to/1, print_to/2, print_even_to/1, print_even_to/2]).

print_to(N) when N > 0-> print_to(N, N).

print_even_to(N) when N > 0 -> print_even_to(N, N).

print_to(N, 1) -> print_num(N);
print_to(N, I) when I =< N -> print_num(N - I + 1),
  print_to(N, I - 1).

print_even_to(N, 1) -> print_even_num(N);
print_even_to(N, I) when I =< N -> print_even_num(N - I + 1),
  print_even_to(N, I - 1).

print_num(N) -> io:format("Number:~p~n", [N]).

print_even_num(N) when N rem 2 == 0 -> print_num(N);
print_even_num(N) when N rem 2 == 1 -> ok.
