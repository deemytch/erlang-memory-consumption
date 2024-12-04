-module(moulion_starter).
-behaviour(gen_server).
-export([start_link/1, init/1, handle_continue/2, handle_info/2, handle_cast/2, handle_call/3]).
-include_lib("kernel/include/logger.hrl").

start_link(NumProcs) ->
	gen_server:start_link(?MODULE, [NumProcs], []).

init([NumProcs]) ->
	{ok, NumProcs, {continue, ok}}.

handle_continue(ok, NumProcs) ->
	{ok, _} = timer:send_after(1000, run),
	{noreply, NumProcs}.

handle_info(run, NumProcs) ->
	?LOG_NOTICE("Starting ~p gen-servers, mem: ~p~n", [NumProcs, erlang:memory()]),
	[gen_server:start_link(fish, [X], []) || X <- lists:seq(1, NumProcs)],
	?LOG_NOTICE("Started ~p gen-servers, mem: ~p~n", [NumProcs, erlang:memory()]),
	{noreply, NumProcs}.

handle_cast(_, NumProcs) -> {noreply, NumProcs}.
handle_call(_, _, NumProcs) -> {reply, [], NumProcs}.
