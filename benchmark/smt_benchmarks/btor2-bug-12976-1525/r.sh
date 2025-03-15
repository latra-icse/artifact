#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "btorexp.c:2267: encode_lemma: Assertion" /tmp/benchmark/smt_benchmarks/bin/boolector2 -rww $* < btor2-bug-12976-1525.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
