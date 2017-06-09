\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/matrix.fth

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
