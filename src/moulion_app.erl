%%%-------------------------------------------------------------------
%% @doc moulion public API
%% @end
%%%-------------------------------------------------------------------

-module(moulion_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    moulion_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
