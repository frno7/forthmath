\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/log.fth

T{  1 log2-floor -> 0 }T
T{  2 log2-floor -> 1 }T
T{  3 log2-floor -> 1 }T
T{  4 log2-floor -> 2 }T
T{  5 log2-floor -> 2 }T
T{  6 log2-floor -> 2 }T
T{  7 log2-floor -> 2 }T
T{  8 log2-floor -> 3 }T
T{  9 log2-floor -> 3 }T
T{ 10 log2-floor -> 3 }T
T{ 11 log2-floor -> 3 }T
T{ 12 log2-floor -> 3 }T
T{ 13 log2-floor -> 3 }T
T{ 14 log2-floor -> 3 }T
T{ 15 log2-floor -> 3 }T
T{ 16 log2-floor -> 4 }T
T{ 17 log2-floor -> 4 }T
T{ 18 log2-floor -> 4 }T
T{ 19 log2-floor -> 4 }T

T{  1 log2-ceiling -> 0 }T
T{  2 log2-ceiling -> 1 }T
T{  3 log2-ceiling -> 2 }T
T{  4 log2-ceiling -> 2 }T
T{  5 log2-ceiling -> 3 }T
T{  6 log2-ceiling -> 3 }T
T{  7 log2-ceiling -> 3 }T
T{  8 log2-ceiling -> 3 }T
T{  9 log2-ceiling -> 4 }T
T{ 10 log2-ceiling -> 4 }T
T{ 11 log2-ceiling -> 4 }T
T{ 12 log2-ceiling -> 4 }T
T{ 13 log2-ceiling -> 4 }T
T{ 14 log2-ceiling -> 4 }T
T{ 15 log2-ceiling -> 4 }T
T{ 16 log2-ceiling -> 4 }T
T{ 17 log2-ceiling -> 5 }T
T{ 18 log2-ceiling -> 5 }T
T{ 19 log2-ceiling -> 5 }T
