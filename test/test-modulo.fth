\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/modulo.fth

T{  5  3 mod ->  2 }T
T{  5 -3 mod -> -1 }T
T{ -5  3 mod ->  1 }T
T{ -5 -3 mod -> -2 }T

T{ 4 5 7 +mod -> 2 }T
T{ 4 5 7 -mod -> 6 }T
T{ 4 5 7 *mod -> 6 }T

\ FIXME Define modulo by zero according to Knuth, Concrete Mathematics, p. 82-83.
\ FIXME : mod ( n -- n ) dup 0= if drop else mod then ;
\ FIXME T{ -2  0 mod -> -2 }T
\ FIXME T{ -1  0 mod -> -1 }T
\ FIXME T{  0  0 mod ->  0 }T
\ FIXME T{  1  0 mod ->  1 }T
\ FIXME T{  2  0 mod ->  2 }T
