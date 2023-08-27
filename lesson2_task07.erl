-module(lesson2_task07).
-export([flatten/1]).

flatten(List) ->
    flatten(List,[]).

flatten([], Acc) ->
    lesson2_task05:reverse(Acc);
flatten([[]|T], Acc) ->
    flatten(T, Acc);
flatten([[[]|H]|T], Acc)->
    flatten([H|T], Acc);
flatten([[H|T1]|T], Acc) ->
    flatten([H,T1|T], Acc);
flatten([H|T], Acc) ->
    flatten(T, [H|Acc]).