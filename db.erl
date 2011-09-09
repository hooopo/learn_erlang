-module(db).
-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

new() -> [].

destroy(_) -> ok.

write(Key, Element, Db) -> [{Key, Element}|Db].

delete(_, []) -> [];
delete(Key, [{Key, _}|T]) ->  delete(Key, T);
delete(Key, [{Other, Element}|T]) -> [{Other, Element}|delete(Key, T)].

read(_, []) -> {error, instance};
read(Key, [{Key, Element}|_]) -> {ok, Element};
read(Key, [_|T]) -> read(Key, T).

match(_, []) -> [];
match(Element, [{Key, Element}|T]) -> [Key|match(Element, T)];
match(Element, [_|T]) -> match(Element, T).
