-module(lesson2_task08).
-export([compress/1]).

compress(List) ->
    compress(List, []).

compress([], Acc) ->
    lesson2_task05:reverse(Acc);
compress([H,H|T], Acc) ->
    compress([H|T], Acc);
compress([H|T], Acc) ->
    compress(T, [H|Acc]).