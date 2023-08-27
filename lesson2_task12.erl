-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) ->
    decode_modified(List, []). 

decode_modified([], Acc) ->
    lesson2_task05:reverse(Acc);
decode_modified([{0,_H}|T], Acc) ->
    decode_modified(T, Acc);
decode_modified([{N,H}|T], Acc)->
    decode_modified([{N-1,H}|T], [H|Acc]);
decode_modified([H|T], Acc) ->
    decode_modified(T, [H|Acc]).