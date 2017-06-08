\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/factor.fth

\ Degenerate numbers.
T{    -1 factors    ->                  0 }T
T{     0 factors    ->                  0 }T
T{     1 factors    ->                  0 }T

\ Prime numbers.
T{   -43 factors    ->           -43    1 }T
T{    -3 factors    ->            -3    1 }T
T{    -2 factors    ->            -2    1 }T
T{     2 factors    ->             2    1 }T
T{     3 factors    ->             3    1 }T
T{    17 factors    ->            17    1 }T
T{    97 factors    ->            97    1 }T

\ Prime power numbers.
T{     4 factors    ->          2  2    2 }T
T{     8 factors    ->       2  2  2    3 }T
T{    16 factors    ->    2  2  2  2    4 }T

\ Composite numbers.
T{  -210 factors    ->    7  5  3 -2    4 }T
T{    -6 factors    ->          3 -2    2 }T
T{     6 factors    ->          3  2    2 }T
T{   210 factors    ->    7  5  3  2    4 }T
T{   715 factors    ->      13 11  5    3 }T
T{  9295 factors    ->   13 13 11  5    4 }T
T{ 22477 factors    ->   19 13 13  7    4 }T

\ Degenerate numbers.
T{    -1 factor-exponents    ->                          0 }T
T{     0 factor-exponents    ->                          0 }T
T{     1 factor-exponents    ->                          0 }T

\ Prime numbers.
T{   -43 factor-exponents    ->                  43 1    1 }T
T{    -3 factor-exponents    ->                   3 1    1 }T
T{    -2 factor-exponents    ->                   2 1    1 }T
T{     2 factor-exponents    ->                   2 1    1 }T
T{     3 factor-exponents    ->                   3 1    1 }T
T{    17 factor-exponents    ->                  17 1    1 }T
T{    97 factor-exponents    ->                  97 1    1 }T

\ Prime power numbers.
T{     4 factor-exponents    ->                   2 2    1 }T
T{     8 factor-exponents    ->                   2 3    1 }T
T{    16 factor-exponents    ->                   2 4    1 }T

\ Composite numbers.
T{  -210 factor-exponents    ->    7 1  5 1  3 1  2 1    4 }T
T{    -6 factor-exponents    ->              3 1  2 1    2 }T
T{     6 factor-exponents    ->              3 1  2 1    2 }T
T{   210 factor-exponents    ->    7 1  5 1  3 1  2 1    4 }T
T{   715 factor-exponents    ->        13 1 11 1  5 1    3 }T
T{  9295 factor-exponents    ->        13 2 11 1  5 1    3 }T
T{ 22477 factor-exponents    ->        19 1 13 2  7 1    3 }T
