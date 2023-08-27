-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, [], []).

pack([], [], Acc1) ->
    lesson2_task05:reverse(Acc1);
pack([H,H|T], Acc, Acc1) ->
    pack([H|T], [H|Acc], Acc1); 
pack([H|T], Acc, Acc1)->
    pack(T, [], [[H|Acc]|Acc1]).