-module(lesson2_task13). 
-export([decode/1]).

decode(List) ->
    decode(List, []).

decode([], Acc) ->
    lesson2_task05:reverse(Acc);
decode([{0,_H}|T], Acc) ->
    decode(T, Acc);
decode([{N,H}|T], Acc) ->
    decode([{N-1, H}|T], [H|Acc]).