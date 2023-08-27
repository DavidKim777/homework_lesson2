-module(lesson2_task15).
-export([replicate/2]).

replicate(List, N) ->
    replicate(List, N, 0, []).

replicate([], _N, _N1, Acc) ->
    lesson2_task05:reverse(Acc);
replicate([_H|T], 0, N1, Acc) ->
    N = N1,
    replicate(T, N, 0, Acc);
replicate([H|T], N, N1, Acc) ->
    replicate([H|T], N-1, N1+1, [H|Acc]).