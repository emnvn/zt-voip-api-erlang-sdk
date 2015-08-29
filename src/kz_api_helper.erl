-module(kz_api_helper).

-export([create_header/0,create_header/1]).

create_header() ->
	#{<<"Accept">> => <<"application/json">>,<<"Content-Type">> => <<"application/json">>}.
	
create_header(AuthenToken) ->
	HeaderMap = create_header(),
	HeaderMap2 = maps:put(<<"X-Auth-Token">>, AuthenToken, HeaderMap),
	HeaderMap2.
