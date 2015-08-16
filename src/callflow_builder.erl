-module(callflow_builder).

-export([build/1]).
-export([add_child/2,add_child/3]).

add_child([Module,Data], Child) ->
	[Module, Data, {<<"children">>,[{<<"_">>,Child}]}];

add_child([Module,Data,Children], Child) ->
	{<<"children">>,[Head|Last]} = Children,
	[Module, Data, {<<"children">>,[{<<"_">>,Child}]}].
	
add_child([Module,Data], Child, Option) ->
	[Module, Data, {<<"children">>,[{Option,Child}]}];
 
add_child([Module,Data,Children], Child, Option) ->
	{<<"children">>,[Head|Last]} = Children,
	[Module, Data, {<<"children">>,[{Option,Child},Head|Last]}].

build(Data) ->
	jsx:encode(Data).