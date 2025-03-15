#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "CegInstantiator::constructInstantiation" /tmp/benchmark/smt_benchmarks/bin/cvc4-1a1aea5 --cegqi-nested-qe --lang smt2 $* < issue5279.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
