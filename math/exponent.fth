\ Copyright 2017 Fredrik Noring

\ Integer exponentiation function. Note that in Forth with negative bases and
\ exponents the result is implementation defined, because the division quotient
\ may be rounded to either negative infinity (floored division) or rounded
\ towards zero (symmetric division).
: ** ( n1 n2 -- n3 )
   1 { b e r }
   e 0< if
      b 0= if abort" Division by zero." then
      1 b e negate recurse /
   else
      begin e ( Fast exponentiation by squaring. )
      while e 1 and if r b * to r then
            b b * to b
            e 1 rshift to e
      repeat r
   then ;
