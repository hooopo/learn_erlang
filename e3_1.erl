-module(e3_1).
-export([sum/1]).
-export([sum/2]).

sum(1) -> 1;
sum(N) -> N + sum(N - 1).

sum(M, M) -> M; 
sum(M, N) when N > M -> sum(N) - sum(M) + M.
