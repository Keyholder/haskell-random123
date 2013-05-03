#!/bin/bash
rm profile
rm profile.hi
rm profile.o

ghc -i../ -prof -fprof-auto -rtsopts -O2 profile.hs
./profile +RTS -p

cat profile.prof
