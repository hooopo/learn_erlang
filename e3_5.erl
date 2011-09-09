-module(e3_5).
-export([filter/2, reverse/1, concatenate/1, flatten/1]).

filter([], _Item) -> [];
filter([Head|Tail], Item) when Item >= Head -> [Head|filter(Tail, Item)];
filter([Head|Tail], Item) when Item < Head -> filter(Tail, Item).

reverse([]) -> [];
reverse([Head|Tail]) -> reverse(Tail) ++ [Head].

concatenate([]) -> [];
concatenate([Head|Tail]) when is_list(Head) -> Head ++ concatenate(Tail);
concatenate([Head|Tail]) -> [Head] ++ concatenate(Tail).

flatten(_) -> ok.
