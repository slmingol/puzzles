#!/bin/bash

### REF: http://wiki.c2.com/?FizzBuzzTest


### method #1 - Straightforward
for i in $(seq 1 100); do
    if ! ((i % 3)) && ! ((i % 5)); then
        printf "%03d: FIZZBUZZ\n" "$i"
    elif ! ((i % 3)); then
        printf "%03d: FIZZ\n" "$i"
    elif ! ((i % 5)); then
        printf "%03d: BUZZ\n" "$i"
    else
        printf "%03d: \n" "$i"
    fi
done

### method #2 - oneliner
seq 100 | while read r;do \
    s=""; ! ((r % 3)) && s="FIZZ"; ! ((r % 5)) && s="${s}BUZZ"; \
    [ "$s" == "" ] && printf "%03d: \n" "$r" || printf "%03d: %s\n" "$r" "$s"; done
