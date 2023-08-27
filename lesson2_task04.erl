-module(lesson2_task04).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], N) ->
    N;
len([_|T], N) ->
    len(T, N+1).