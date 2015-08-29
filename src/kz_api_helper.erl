-module(kz_api_helper).

-export([create_header/0,create_header/1]).
-export([get_token_request/2]).
-export([get_response_value/2,get_response_value/3]).
-export([ge_c2c_request/3]).


create_header() ->
	#{<<"Accept">> => <<"application/json">>,<<"Content-Type">> => <<"application/json">>}.
	
create_header(AuthenToken) ->
	HeaderMap = create_header(),
	HeaderMap2 = maps:put(<<"X-Auth-Token">>, AuthenToken, HeaderMap),
	HeaderMap2.

get_token_request(AccountName,Credential) ->
	Body = jsx:encode([{<<"data">>,[{<<"credentials">>,Credential},{<<"account_name">>,AccountName}]}]),
	Url = "/v1/user_auth",
	{Body,Url}.
	
ge_c2c_request(AccountId, C2cId, Contact) ->
	Body = jsx:encode([{<<"data">>,[{<<"contact">>,Contact}]},{<<"verb">>,<<"POST">>}]),
	Url = "/v1/accounts/"++AccountId++"/clicktocall/"++C2cId++"/connect",
	{Body,Url}.
	
get_response_value(Response,Key) -> 
	ResBody = maps:get(body,Response),
	ResDecode = jsx:decode(ResBody),
	Value = proplists:get_value(Key,ResDecode,<<>>),
	Value.
	
get_response_value(Response, ParentKey, ChildKey) -> 
	ParentValue = get_response_value(Response,ParentKey),
	Value = proplists:get_value(ChildKey,ParentValue,<<>>),
	Value.