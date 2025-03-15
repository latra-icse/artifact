#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "getEnumTypeInfo" /tmp/benchmark/smt_benchmarks/bin/cvc4-42d1c64 --lang sygus $* < issue3490.sy
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
