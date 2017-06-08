\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/prime.fth

T{ 1 prime ->  2 }T
T{ 2 prime ->  3 }T
T{ 3 prime ->  5 }T
T{ 9 prime -> 23 }T

T{ 0 primes ->                        }T
T{ 1 primes ->                      2 }T
T{ 2 primes ->                    3 2 }T
T{ 9 primes -> 23 19 17 13 11 7 5 3 2 }T

T{ -9 prime-count -> 0 }T
T{ -1 prime-count -> 0 }T
T{  0 prime-count -> 0 }T
T{  1 prime-count -> 0 }T
T{  2 prime-count -> 1 }T
T{  3 prime-count -> 2 }T
T{  4 prime-count -> 2 }T
T{  5 prime-count -> 3 }T
T{  6 prime-count -> 3 }T
T{  7 prime-count -> 4 }T
T{  8 prime-count -> 4 }T
T{ 23 prime-count -> 9 }T

: test-prime-count-bounds ( -- )
	1000 -100 +do
		T{ i prime-count-lower i prime-count       <= -> true }T
		T{ i prime-count       i prime-count-upper <= -> true }T
	loop ;
test-prime-count-bounds

: test-prime-bounds ( -- )
	100 1 +do
		T{ i prime-lower i prime       <= -> true }T
		T{ i prime       i prime-upper <= -> true }T
	loop ;
test-prime-bounds

T{  -17 prime? -> false }T
T{   -1 prime? -> false }T
T{    0 prime? -> false }T
T{    1 prime? -> false }T
T{    2 prime? ->  true }T
T{    3 prime? ->  true }T
T{    4 prime? -> false }T
T{    5 prime? ->  true }T
T{   17 prime? ->  true }T
T{ 4171 prime? -> false }T

T{  -17 composite? -> false }T
T{   -1 composite? -> false }T
T{    0 composite? -> false }T
T{    1 composite? -> false }T
T{    2 composite? -> false }T
T{    3 composite? -> false }T
T{    4 composite? ->  true }T
T{    5 composite? -> false }T
T{   17 composite? -> false }T
T{ 4171 composite? ->  true }T

T{ -100 following-prime ->  2 }T
T{   -1 following-prime ->  2 }T
T{    0 following-prime ->  2 }T
T{    1 following-prime ->  2 }T
T{    2 following-prime ->  2 }T
T{    3 following-prime ->  3 }T
T{    4 following-prime ->  5 }T
T{    5 following-prime ->  5 }T
T{    6 following-prime ->  7 }T
T{    7 following-prime ->  7 }T
T{    8 following-prime -> 11 }T
T{    9 following-prime -> 11 }T
T{   10 following-prime -> 11 }T
T{   11 following-prime -> 11 }T

T{    2 preceding-prime ->  2 }T
T{    3 preceding-prime ->  3 }T
T{    4 preceding-prime ->  3 }T
T{    5 preceding-prime ->  5 }T
T{    6 preceding-prime ->  5 }T
T{    7 preceding-prime ->  7 }T
T{    8 preceding-prime ->  7 }T
T{    9 preceding-prime ->  7 }T
T{   10 preceding-prime ->  7 }T
T{   11 preceding-prime -> 11 }T
