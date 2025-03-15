#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "btorrewrite.c:1298: normalize_binary_comm_ass_exp: Assertion" /tmp/benchmark/smt_benchmarks/bin/boolector4 -rww -rwa -rwr $* < btor4-bug-22058-7657.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
