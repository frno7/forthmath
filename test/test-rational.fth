\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/rational.fth

T{  0  1 q>q ->  0 1 }T
T{  1  1 q>q ->  1 1 }T
T{ -1  1 q>q -> -1 1 }T
T{  1 -1 q>q -> -1 1 }T

T{  2  1 q>q ->  2 1 }T
T{  1  2 q>q ->  1 2 }T
T{  2  2 q>q ->  1 1 }T
T{ -2  2 q>q -> -1 1 }T
T{  2 -2 q>q -> -1 1 }T

T{ 18 12 q>q ->  3 2 }T

T{ -2 s>q -> -2 1 }T
T{ -1 s>q -> -1 1 }T
T{  0 s>q ->  0 1 }T
T{  1 s>q ->  1 1 }T
T{  2 s>q ->  2 1 }T

T{ -2 1 q>s -> -2 }T
T{ -1 1 q>s -> -1 }T
T{  0 1 q>s ->  0 }T
T{  1 1 q>s ->  1 }T
T{  2 1 q>s ->  2 }T

T{  1 2 q>s ->       0 }T
T{ -1 2 q>s ->  -1 2 / }T

T{  2  3  5  7 q+ -> 29 21 }T

T{  2  3  5  7 q- -> -1 21 }T

T{  1  1  0  1 q* ->  0  1 }T
T{  0  1  1  1 q* ->  0  1 }T
T{  2  1  3  1 q* ->  6  1 }T
T{ -2  1  3  1 q* -> -6  1 }T
T{ -2  1 -3  1 q* ->  6  1 }T
T{  2 -1 -3  1 q* ->  6  1 }T
T{  2 -1  3 -1 q* ->  6  1 }T
T{ -2  1  3 -1 q* ->  6  1 }T

T{  2  3  5  7 q/ -> 14 15 }T
