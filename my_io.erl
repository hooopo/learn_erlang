-module(my_io).
-export([print_list/1]).

%%TODO print list which's item is num.
print_list([]) -> ok;
print_list([Item|Rest]) ->
  io:format(Item, []),
  print_list(Rest).
