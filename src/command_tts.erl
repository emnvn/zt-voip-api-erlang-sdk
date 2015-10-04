-module(command_tts).

-export([create/1, create/2, create/3, create/4, create_command_tts/1,create_command_tts/2,create_command_tts/3,create_command_tts/4]).

create(Text) ->
	create_command_tts(Text).

create(Text,Voice) ->
	create_command_tts(Text,Voice).

create(Text,Voice,Language) ->
	create_command_tts(Text,Voice,Language).

create(Text,Voice,Language,Engine) ->
	create_command_tts(Text,Voice,Language,Engine).	
	
create_command_tts(Text) ->
[{<<"module">>,<<"tts">>},{<<"data">>,[{<<"text">>,Text}]}].

create_command_tts(Text,Voice) ->
[{<<"module">>,<<"tts">>},{<<"data">>,[{<<"text">>,Text},{<<"voice">>,Voice}]}].

create_command_tts(Text,Voice,Language) ->
[{<<"module">>,<<"tts">>},{<<"data">>,[{<<"text">>,Text},{<<"voice">>,Voice},{<<"language">>,Language}]}].

create_command_tts(Text,Voice,Language,Engine) ->
[{<<"module">>,<<"tts">>},{<<"data">>,[{<<"text">>,Text},{<<"voice">>,Voice},{<<"language">>,Language},{<<"engine">>,Engine}]}].