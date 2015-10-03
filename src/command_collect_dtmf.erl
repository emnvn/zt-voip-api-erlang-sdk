-module(command_collect_dtmf).

-export([create/1,create/2,create_command_collect_dtmf/1, create_command_collect_dtmf/2]).

create(CollectionName) ->
	create_command_collect_dtmf(CollectionName).

create(CollectionName,MaxDigits) ->
	create_command_collect_dtmf(CollectionName,MaxDigits).
	
create_command_collect_dtmf(CollectionName) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,4}]}].

create_command_collect_dtmf(CollectionName,MaxDigits) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,MaxDigits}]}].
