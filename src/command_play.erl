-module(command_play).

-export([create/1, create_command_play/1]).

create(Url) ->
	create_command_play(Url).

create_command_play(Url) ->
[{<<"module">>,<<"play">>},{<<"data">>,[{<<"id">>,Url}]}].

