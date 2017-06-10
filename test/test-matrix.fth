\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/matrix.fth

\ Zero matrix.
T{ 1 1 matrix0 -> 0     1 1 }T
T{ 2 1 matrix0 -> 0 0   2 1 }T
T{ 3 1 matrix0 -> 0 0 0 3 1 }T
T{ 1 2 matrix0 -> 0
                  0     1 2 }T
T{ 1 3 matrix0 -> 0
                  0
                  0     1 3 }T
T{ 2 2 matrix0 -> 0 0
                  0 0   2 2 }T
T{ 3 3 matrix0 -> 0 0 0
                  0 0 0
                  0 0 0 3 3 }T

\ Identity matrix.
T{ 1 matrix1 -> 1     1 1 }T
T{ 2 matrix1 -> 1 0
                0 1   2 2 }T
T{ 3 matrix1 -> 1 0 0
                0 1 0
                0 0 1 3 3 }T

T{  17  19  23
    29  31  37 3 2 matrix-negate ->
   -17 -19 -23
   -29 -31 -37 3 2 }T

T{   2   3   5
     7  11  13 3 2
    17  19  23
    29  31  37 3 2 matrix+ ->
    19  22  28
    36  42  50 3 2 }T

T{   2   3   5
     7  11  13 3 2
    17  19  23
    29  31  37 3 2 matrix- ->
   -15 -16 -18
   -22 -20 -24 3 2 }T

T{   2   3   5
     7  11  13 3 2
    17  19
    23  29
    31  37 2 3 matrix* ->
   258 310
   775 933 2 2 }T
