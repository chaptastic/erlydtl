-module(erlydtl_example_variable_storage).

-export([new/1]).
-export([some_var/1]).
-export([find_value/2]).

new(Val) ->
    {erlydtl_example_variable_storage, Val}.

some_var({_, Val}) ->
    Val.

find_value(other_var, {_, Val}) ->
    Val;
find_value(_, _) ->
    undefined.

