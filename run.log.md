## RUN LOG

```
% START_PROCS=1000000 rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling moulion
Erlang/OTP 27 [erts-15.1.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [jit:ns]

===> Booted moulion
Eshell V15.1.2 (press Ctrl+G to abort, type help(). for help)
=NOTICE REPORT==== 4-Dec-2024::21:57:03.069813 ===
Starting 1000000 gen-servers, mem: [{total,38029224},
                                    {processes,15837728},
                                    {processes_used,15822080},
                                    {system,22191496},
                                    {atom,450745},
                                    {atom_used,444806},
                                    {binary,1364472},
                                    {code,8446238},
                                    {ets,533424}]

=NOTICE REPORT==== 4-Dec-2024::21:57:20.742205 ===
Started 1000000 gen-servers, mem: [{total,3084440824},
                                   {processes,2934276280},
                                   {processes_used,2934275376},
                                   {system,150164544},
                                   {atom,450745},
                                   {atom_used,444858},
                                   {binary,1330296},
                                   {code,8450814},
                                   {ets,534576}]

1> 3084440824 - 38029224.
3046411600
2> 3_046_411_600.
```
