\ Copyright 2017 Fredrik Noring

require math/fibonacci.fth
require ttester.fth

T{ 0 fibonacci ->  0 }T
T{ 1 fibonacci ->  1 }T
T{ 2 fibonacci ->  1 }T
T{ 3 fibonacci ->  2 }T
T{ 4 fibonacci ->  3 }T
T{ 5 fibonacci ->  5 }T
T{ 6 fibonacci ->  8 }T
T{ 7 fibonacci -> 13 }T

T{ 1 fibonaccis ->                   0 }T
T{ 2 fibonaccis ->                 1 0 }T
T{ 3 fibonaccis ->               1 1 0 }T
T{ 4 fibonaccis ->             2 1 1 0 }T
T{ 5 fibonaccis ->           3 2 1 1 0 }T
T{ 6 fibonaccis ->         5 3 2 1 1 0 }T
T{ 7 fibonaccis ->       8 5 3 2 1 1 0 }T
T{ 8 fibonaccis ->    13 8 5 3 2 1 1 0 }T
T{ 9 fibonaccis -> 21 13 8 5 3 2 1 1 0 }T

T{ 19 100 fibonacci-mod -> 81 }T
: test-fibonacci-mod
	24 0 +do ( 0, 1, 2, ..., 28657 )
		T{ i 1000 fibonacci-mod -> i fibonacci 1000 mod }T
	loop ;
test-fibonacci-mod
