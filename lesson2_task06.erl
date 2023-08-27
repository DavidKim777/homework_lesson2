-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    List1 = lesson2_task05:reverse(List),
    List == List1. 