-module(command_pivot).

-export([create/1, create_command_pivot/1]).

create(Voice_url) ->
	create_command_pivot(Voice_url).

create_command_pivot(Voice_url) ->
[{<<"module">>,<<"pivot">>},{<<"data">>,[{<<"voice_url">>,Voice_url}]}].


