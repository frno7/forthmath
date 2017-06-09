\ Copyright 2017 Fredrik Noring

require ttester.fth

require core/reverse.fth

T{                0 reverse ->                }T
T{             11 1 reverse -> 11             }T
T{          13 11 2 reverse -> 11 13          }T
T{       17 13 11 3 reverse -> 11 13 17       }T
T{    19 17 13 11 4 reverse -> 11 13 17 19    }T
T{ 23 19 17 13 11 5 reverse -> 11 13 17 19 23 }T
