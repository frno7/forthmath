# Mathematics in Forth

In the examples below the top stack item is shown right-most, following Forth
convention.

## Primes

The file [math/prime.fth](math/prime.fth) defines words related to
[prime numbers](https://en.wikipedia.org/wiki/Prime_number).

The word `primes` gives a number of primes on the data stack. For example,
`9 primes` gives `23 19 17 13 11 7 5 3 2`. Using `traverse-primes` one can
for example define `prime` as:

```forth
: prime' ( n p -- n ) nip true ; ( True to obtain next prime number. )
: prime  ( n -- n ) 0 swap ['] prime' traverse-primes ;
```

Thus `9 prime` gives `23`. Computing the prime can be slow especially for large
indices. The words `prime-lower` and `prime-upper` give quick estimates of
lower and upper bounds. The inequalities `prime-lower` ≤ `prime` ≤ `prime-upper`
hold for any number.

The [prime-counting function](https://en.wikipedia.org/wiki/Prime-counting_function)
is defined by the word `prime-count`. For example, `23 prime-count` gives `9`
because there are 9 primes below or equal to 23. Since this computation can be
slow there are words for quick estimates of lower and upper bounds, where
the inequalities `prime-count-lower` ≤ `prime-count` ≤ `prime-count-upper` hold
for any number.

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

Using `traverse-factors` one can for example define words for the
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

## Divisors

The files [math/divisor.fth](math/divisor.fth) and
[math/gcd.fth](math/gcd.fth) define words related to
[divisor functions](https://en.wikipedia.org/wiki/Divisor_function).

The word `divisors` gives the divisors of a number. For example,
`52 divisors` gives `52 26 13 4 2 1 6` where the top integer `6` indicates
the divisor count and then the divisors follow from smallest to largest.
`traverse-divisors` can be used to iterate over all divisors.

The word `divisor-sum` implements the sum of positive divisors (sigma)
function σ<sub>x</sub>(n). With x = 0 the function corresponds to
`divisor-count`.

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
For example, `5 3 13 **mod` gives `8` which corresponds to
5<sup>3</sup> = 125 = 8 mod 13.

## Fibonacci numbers

The file [math/fibonacci.fth](math/fibonacci.fth) defines words related to
[Fibonacci numbers](https://en.wikipedia.org/wiki/Fibonacci_number).

The word `fibonaccis` gives a Fibonacci sequence with a given number of
terms on the data stack. Thus `10 fibonaccis` gives `34 21 13 8 5 3 2 1
1 0` starting at _F_<sub>0</sub>. The sequence is infinite in principle and
since the terms grow at an exponential rate the number of useful terms is
small due to [integer overflow](https://en.wikipedia.org/wiki/Integer_overflow).
The word `traverse-fibonacci` can be used to iterate over the Fibonacci
sequence. The word `fibonacci` corresponds to _F_<sub>_n_</sub> and thus
`9 fibonacci` gives `34`.

## Logarithms

The file [math/log.fth](math/log.fth) defines words related to
[logarithms](https://en.wikipedia.org/wiki/Logarithm).

The words `log2-floor` and `log2-ceil` compute the log<sub>2</sub> using
integer arithmetics only, where the inequalities `log2-floor` ≤
log<sub>2</sub> ≤ `log2-ceil` hold for any number.  Similarly, `ln-lower`
and `ln-upper` give quick estimates with the inequalities `ln-lower` ≤
ln ≤ `ln-upper`.
