# Mathematics in Forth

In the examples below the top stack item is shown right-most, following Forth
convention.

## Primes

The file [math/prime.fth](math/prime.fth) defines words related to
[prime numbers](https://en.wikipedia.org/wiki/Prime_number).

The word `primes` gives a number of primes on the data stack. For example,
`9 primes` gives `23 19 17 13 11 7 5 3 2`. Using `traverse-primes` one can
for example compute the nth prime number _p_<sub>_n_</sub> by defining `prime`
as:

```forth
: prime' ( n n -- n ) nip true ; ( True to obtain next prime number. )
: prime  ( n -- n ) 0 swap ['] prime' traverse-primes ;
```

Thus `9 prime` gives `23` corresponding to _p_<sub>9</sub>. Computing the prime
can be slow especially for large indices. The words `prime-lower` and
`prime-upper` give quick estimates of lower and upper bounds. The inequalities
`prime-lower` ≤ `prime` ≤ `prime-upper` hold for any number.

The [prime-counting function](https://en.wikipedia.org/wiki/Prime-counting_function)
denoted by π(_n_) is defined by the word `prime-count`. For example, `23
prime-count` gives `9` because there are 9 primes below or equal to 23. Since
this computation can be slow there are words for quick estimates of lower and
upper bounds, where the inequalities `prime-count-lower` ≤ `prime-count` ≤
`prime-count-upper` hold for any number.

The word `primes-preceding` gives on the data stack all primes below or equal
to a certain number. Thus `23  primes-preceding` gives `23 19 17 13 11 7 5 3 2
9` where the top integer `9` is the number of primes below or equal to 23. The
word `traverse-primes-preceding` can be used to traverse all primes below or
equal to a given number.

## Prime decomposition

The file [math/factor.fth](math/factor.fth) defines words related to
[integer factorisation](https://en.wikipedia.org/wiki/Integer_factorization).

The word `factors` factorises a given integer into primes. For example,
12857=13·23·43 and so `12857 factors` gives `43 23 13 3` on the data
stack, where the top integer `3` indicates the number of prime factors and
then the factors `13`, `23` and `43` follow from smallest to largest.

Using `traverse-factors` one can for example define words for finding the
smallest or largest prime factor of a given integer:

```forth
: min-factor' ( n n -- n) nip false ; ( False to ignore further prime factors. )
: min-factor  ( n -- n ) 0 swap ['] min-factor' traverse-factors ;

: max-factor' ( n n -- n) nip true ; ( True to obtain next prime factor. )
: max-factor  ( n -- n ) 0 swap ['] max-factor' traverse-factors ;
```

Thus `12857 min-factor` gives `13` and `12857 max-factor` gives `43`.

The words `prime?` and `composite?` test whether a number is prime or
composite. Thus `17 prime?` gives `true` since 17 is a prime number but `18
prime?` gives `false` since 18 is not a prime number. Numbers below 2 are
neither prime nor composite.

Some integers such as 22477=7·13·13·19 have repeating primes so that `22477
factors` gives `19 13 13 7 4` where `13` is repeated twice. The word
`factor-exponents` factorises into _distinct_ primes with corresponding
exponents. Thus `22477 factor-exponents` gives `19 1 13 2 7 1 3` where the top
integer `3` indicates the number of distinct primes, followed by the pairs of
primes and exponents corresponding to 7<sup>1</sup>·13<sup>2</sup>·19<sup>1</sup>.

The [Pollard Monte Carlo factorisation method](https://en.wikipedia.org/wiki/Pollard%27s_rho_algorithm)
is potentially very fast, but since it is a probabalistic method it can be slow
and even fail to find factors of composite numbers. For example,
`pollard-rho-factors 4267640728818788929` gives the two factors
3456789019 and 1234567891 within a fraction of a second on a 64 bit Forth
system.

## Divisors

The files [math/divisor.fth](math/divisor.fth) and
[math/gcd.fth](math/gcd.fth) define words related to
[divisor functions](https://en.wikipedia.org/wiki/Divisor_function).

The word `divisors` gives the divisors of a number. For example,
`52 divisors` gives `52 26 13 4 2 1 6` where the top integer `6` indicates
the divisor count and then the divisors follow from smallest to largest.
`traverse-divisors` can be used to iterate over all divisors.

The sum of positive divisors function denoted by σ<sub>x</sub>(_n_) is defined
by `divisor-sum`. With x = 0 the function corresponds to `divisor-count`.

The word `gcd` gives the
[greatest common divisor](https://en.wikipedia.org/wiki/Greatest_common_divisor).
For example, `12 18 gcd` gives `6`. The word `lcm` gives the corresponding
[least common multiple](https://en.wikipedia.org/wiki/Least_common_multiple).
For example, `6 21 lcm` gives `42`. The word `extended-gcd` implements the
[extended Euclidean algorithm](https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm)
that gives two addional integers related to
[Bézout’s identity](https://en.wikipedia.org/wiki/B%C3%A9zout%27s_identity).
For example, `240 46 extended-gcd` gives `-9 47 2` where `2` is the greatest
common divisor and the identity holds as -9·240 + 47·46 = 2 = gcd(240, 46).

## Exponents

The file [math/exponent.fth](math/exponent.fth) defines words related to
[exponentiation](https://en.wikipedia.org/wiki/Exponentiation).

The word `**` computes integer exponentiation using efficient
[exponentiation by squaring](https://en.wikipedia.org/wiki/Exponentiation_by_squaring).
For example, `3 4 **` gives `81` which corresponds to 3<sup>4</sup> = 81.
The word `**mod` computes
[modular exponentiation](https://en.wikipedia.org/wiki/Modular_exponentiation).

## Logarithms

The file [math/log.fth](math/log.fth) defines words related to
[logarithms](https://en.wikipedia.org/wiki/Logarithm).

The words `log2-floor` and `log2-ceiling` compute log<sub>2</sub> using
integer arithmetics only, where the inequalities `log2-floor` ≤
log<sub>2</sub> ≤ `log2-ceiling` hold for any number.  Similarly, `ln-lower`
and `ln-upper` give quick estimates with the inequalities `ln-lower` ≤
ln ≤ `ln-upper`.

## Modular arithmetic

The file [math/modulo.fth](math/modulo.fth) defines words related to
[modular arithmetic](https://en.wikipedia.org/wiki/Modular_arithmetic).

The words `+mod`, `-mod`, `*mod` and `**mod` define modular arithmetic in a
natural way. For example, `5 3 13 **mod` gives `8` which corresponds to
5<sup>3</sup> = 125 = 8 (mod 13).

## Matrices

The file [math/matrix.fth](math/matrix.fth) defines words related to
[matrices](https://en.wikipedia.org/wiki/Matrix_(mathematics)).

Matrices are laid out in the following way on the stack: a 2×3 matrix having
dimensions 2 rows and 3 columns with elements _a_, _b_ and _c_ in the first
row and _d_, _e_ and _f_ in the second row is represented on the stack with
`a b c d e f 3 2`. Adding, subtracting, negating and multiplying matrices are
defined by `matrix+`, `matrix-`, `matrix-negate` and `matrix*`. The word
`matrix**` defines matrix exponentiation, and the words `matrix0` and `matrix1`
give the zero and identity matrices.

## Special numbers

The files
[math/binomial.fth](math/binomial.fth),
[math/bernoulli.fth](math/bernoulli.fth) and
[math/faulhaber.fth](math/faulhaber.fth)
define words related to special numbers.

The word `binomial` corresponds to
[binomial numbers](https://en.wikipedia.org/wiki/Binomial_number). For example,
`7 3 binomial` gives `35`. The word `bernoulli` corresponds to
[Bernoulli numbers](https://en.wikipedia.org/wiki/Bernoulli_number). For example,
`12 bernoulli` gives the rational number `-691 2730`.
The word `faulhaber` corresponds to
[Faulhaber’s formula](https://en.wikipedia.org/wiki/Faulhaber%27s_formula). For
example, `7 2 faulhaber` gives `91` which corresponds to
1<sup>2</sup>+
2<sup>2</sup>+
3<sup>2</sup>+
4<sup>2</sup>+
5<sup>2</sup>+
6<sup>2</sup>=91.
In general
`1 faulhaber` corresponds to the [triangular numbers](https://en.wikipedia.org/wiki/Triangular_number),
`2 faulhaber` to the [square pyramidal numbers](https://en.wikipedia.org/wiki/Square_pyramidal_number),
`3 faulhaber` to the [squared triangular numbers](https://en.wikipedia.org/wiki/Squared_triangular_number),
and so on.

## Fibonacci numbers

The file [math/fibonacci.fth](math/fibonacci.fth) defines words related to
[Fibonacci numbers](https://en.wikipedia.org/wiki/Fibonacci_number).

The word `fibonaccis` gives a Fibonacci sequence with a given number of
terms on the data stack. Thus `10 fibonaccis` gives `34 21 13 8 5 3 2 1
1 0` starting at _F_<sub>0</sub>. The sequence is infinite in principle but
since the terms grow at an exponential rate the number of useful terms is
small due to [integer overflow](https://en.wikipedia.org/wiki/Integer_overflow).
The word `traverse-fibonacci` can be used to iterate over the Fibonacci
sequence. The word `fibonacci` corresponds to _F_<sub>_n_</sub> and thus
`9 fibonacci` gives `34`, including negative indices such as `-6 fibonacci`
giving `-8`.

Fibonacci numbers can also be computed in [matrix
form](https://en.wikipedia.org/wiki/Fibonacci_number#Matrix_form) using
exponentiation of a 2×2 system of linear [difference
equations](https://en.wikipedia.org/wiki/Recurrence_relation):

```forth
: fibonacci-matrix ( -- 4 * n n n )
	1 1
	1 0 2 2 ;
: fibonacci-mod ( n n -- n )
	0 { n m r }
	fibonacci-matrix n m matrix**mod
	0 1 matrix-element to r
	matrix-drop r ;
```

For example, one can verify that the last two digits of _F_<sub>19</sub> by
`19 100 fibonacci-mod` gives `81`. Since matrix exponentiation is very
efficient, one can compute much larger Fibonacci numbers. For example,
`4267640728818788929 10000 fibonacci-mod` quickly gives `4129` which
corresponds to _F_<sub>4267640728818788929</sub> (mod 10000).

## Auxiliary

The files [aux/nallot.fth](aux/nallot.fth),
[aux/reverse.fth](aux/reverse.fth) and [aux/sort.fth](aux/sort.fth)
define auxiliary words.

Many algorithms need [direct access](https://en.wikipedia.org/wiki/Random_access)
memory to work effectively. The `n>allot` and `nallot>` words move _n_ cells
from the stack to data space and vice versa. This makes it possible to use data
space as a scratch pad, similar to `>r` and `nr>`.

The word `reverse` reversers a given number of items on the stack, and the word
`ndrop` drops _n_ items from the stack.

The generic `sort` function takes an execution token for comparisons. The words
`sort>` and `sort<` order a given number of items on the stack, in ascending or
descending order, and are implemented as:

```forth
: sort> ( n * x n -- n * x ) ['] > sort ; \ Sort in ascending order.
: sort< ( n * x n -- n * x ) ['] < sort ; \ Sort in descending order.
```
