-module(e3_5).
-export([filter/2]).

filter([], _Item) -> [];
filter([Head|Tail], Item) when Item >= Head -> [Head|filter(Tail, Item)];
filter([Head|Tail], Item) when Item < Head -> filter(Tail, Item).
