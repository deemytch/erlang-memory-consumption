-module(fish).
-behaviour(gen_server).
-export([start_link/1, init/1, handle_continue/2, handle_info/2, handle_cast/2, handle_call/3]).

start_link(MyNum) ->
	Name = io_lib:format("fish#~p",[MyNum]),
	gen_server:start_link({local, Name}, ?MODULE, [MyNum], []).

init([MyNum]) ->
	{ok, MyNum, {continue, ok}}.

handle_continue(ok, MyNum) ->
	{ok, _} = timer:send_after(100_000, done),
	{noreply, MyNum}.

handle_info(done, MyNum) -> {stop, normal, MyNum}.
handle_cast(_, MyNum) -> {noreply, MyNum}.
handle_call(_, _, MyNum) -> {reply, [], MyNum}.
