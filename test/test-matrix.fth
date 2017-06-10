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

\ Matrix negation.
T{  17  19  23
    29  31  37 3 2 matrix-negate ->
   -17 -19 -23
   -29 -31 -37 3 2 }T

\ Matrix addition.
T{   2   3   5
     7  11  13 3 2
    17  19  23
    29  31  37 3 2 matrix+ ->
    19  22  28
    36  42  50 3 2 }T

\ Matrix subtraction.
T{   2   3   5
     7  11  13 3 2
    17  19  23
    29  31  37 3 2 matrix- ->
   -15 -16 -18
   -22 -20 -24 3 2 }T

\ Matrix multiplication.
T{   2   3   5
     7  11  13 3 2
    17  19
    23  29
    31  37 2 3 matrix* ->
   258 310
   775 933 2 2 }T

\ Matrix exponentiation.
: matrix3x3 ( -- 9 * n n n )
	 2  3  5
	 7 11 13
	17 19 23 3 3 ;

T{ matrix3x3 0 matrix** ->     1     0     0
                               0     1     0
                               0     0     1 3 3 }T
T{ matrix3x3 1 matrix** ->     2     3     5
	                       7    11    13
	                      17    19    23 3 3 }T
T{ matrix3x3 2 matrix** ->   110   134   164
                             312   389   477
		             558   697   861 3 3 }T
T{ matrix3x3 3 matrix** ->  3946  4920  6064
                           11456 14278 17588
                           20632 25700 31654 3 3 }T
