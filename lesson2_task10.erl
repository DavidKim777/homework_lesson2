-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
    encode(List, 0, []).

encode([], 0, Acc)->
    lesson2_task05:reverse(Acc);
encode([H,H|T], N, Acc) ->
    encode([H|T], N+1, Acc);
encode([H|T], N, Acc)->
    encode(T, 0, [{N+1,H}|Acc]).