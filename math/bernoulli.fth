\ Copyright 2017 Fredrik Noring

\ Rational Bernoulli number.
create bernoulli ( n -- n n )
	      1 ,    1 , \  0
	     -1 ,    2 , \  1
	      1 ,    6 , \  2
	      0 ,    1 , \  3
	     -1 ,   30 , \  4
	      0 ,    1 , \  5
	      1 ,   42 , \  6
	      0 ,    1 , \  7
	     -1 ,   30 , \  8
	      0 ,    1 , \  9
	      5 ,   66 , \ 10
	      0 ,    1 , \ 11
	   -691 , 2730 , \ 12
	      0 ,    1 , \ 13
	      7 ,    6 , \ 14
	      0 ,    1 , \ 15
	  -3617 ,  510 , \ 16
	does>	{ n a }
		 n 0 <
		16 n < or if abort" Bernoulli number out of range" then
		n 2* cells a + dup @ swap cell+ @ ;
