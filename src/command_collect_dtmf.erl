% Reference this module: https://github.com/2600hz/kazoo/blob/305053c762795ba279028c82c5e83b25f4d8901e/applications/callflow/src/module/cf_collect_dtmf.erl
-module(command_collect_dtmf).

-export([create/1,create/2,create_command_collect_dtmf/1, create_command_collect_dtmf/2]).

create(CollectionName) ->
	create_command_collect_dtmf(CollectionName).

create(CollectionName,MaxDigits) ->
	create_command_collect_dtmf(CollectionName,MaxDigits).
	
create_command_collect_dtmf(CollectionName) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,4},{<<"timeout">>,5000},{<<"interdigit_timeout">>,2000},{<<"terminator">>,<<"#">>}]}].

create_command_collect_dtmf(CollectionName,MaxDigits) ->
[{<<"module">>,<<"collect_dtmf">>},{<<"data">>,[{<<"collection_name">>,CollectionName},{<<"max_digits">>,MaxDigits}]}].
