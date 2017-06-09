\ Copyright 2017 Fredrik Noring

require ttester.fth

require core/nallot.fth

T{                0 n>allot 0 nallot> ->                }T
T{             11 1 n>allot 1 nallot> ->             11 }T
T{          13 11 2 n>allot 2 nallot> ->          13 11 }T
T{       17 13 11 3 n>allot 3 nallot> ->       17 13 11 }T
T{    19 17 13 11 4 n>allot 4 nallot> ->    19 17 13 11 }T
T{ 23 19 17 13 11 5 n>allot 5 nallot> -> 23 19 17 13 11 }T
