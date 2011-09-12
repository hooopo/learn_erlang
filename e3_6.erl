-module(e3_6).
-export([quick_sort/1, merge_sort/1, merge/3]).

quick_sort([]) -> [];
quick_sort([H|T]) -> 
  {Left, Right} = lists:partition(fun(X) -> X =< H end, T),
  quick_sort(Left) ++ [H] ++ quick_sort(Right).

merge_sort([]) -> [];
merge_sort([Single]) -> [Single];
merge_sort(List) -> 
  {Left, Right} = lists:split(length(List) div 2, List),
  merge(merge_sort(Left), merge_sort(Right), []).

merge([], [], Result) -> Result;
merge([], Right, Result) -> merge([], [], Result ++ Right);
merge(Left, [], Result) -> merge([], [], Result ++ Left);
merge([HL|TL], [HR|TR], Result) -> 
  if 
    HL =< HR -> merge(TL, [HR|TR], Result ++ [HL]);
    HL > HR  -> merge([HL|TL], TR, Result ++ [HR])
  end.
