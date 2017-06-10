\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/faulhaber.fth

T{ 0 0 faulhaber -> 0 }T
T{ 0 1 faulhaber -> 0 }T
T{ 0 2 faulhaber -> 0 }T

T{ 1 0 faulhaber -> 1 }T
T{ 1 1 faulhaber -> 0 }T
T{ 1 2 faulhaber -> 0 }T

T{ 2 0 faulhaber -> 2 }T
T{ 2 1 faulhaber -> 1 }T
T{ 2 2 faulhaber -> 1 }T

T{ 3 0 faulhaber -> 3 }T
T{ 3 1 faulhaber -> 3 }T
T{ 3 2 faulhaber -> 5 }T

: faulhaber-reference { n m -- n} 0 n 0 +do i m ** + loop ;
: test-faulhaber
	3 1 +do
		10 0 +do
			T{ i j faulhaber -> i j faulhaber-reference }T
		loop
	loop ;
test-faulhaber
