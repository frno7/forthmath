\ Copyright 2017 Fredrik Noring

require ttester.fth

require math/divisor.fth

\ https://oeis.org/A000005
T{  1 divisor-count ->  1 }T
T{  2 divisor-count ->  2 }T
T{  3 divisor-count ->  2 }T
T{  4 divisor-count ->  3 }T
T{  5 divisor-count ->  2 }T
T{  6 divisor-count ->  4 }T
T{  7 divisor-count ->  2 }T
T{  8 divisor-count ->  4 }T
T{  9 divisor-count ->  3 }T
T{ 10 divisor-count ->  4 }T
T{ 11 divisor-count ->  2 }T
T{ 12 divisor-count ->  6 }T
T{ 13 divisor-count ->  2 }T
T{ 14 divisor-count ->  4 }T
T{ 15 divisor-count ->  4 }T
T{ 16 divisor-count ->  5 }T
T{ 17 divisor-count ->  2 }T

\ https://oeis.org/A000005
T{  1 0 divisor-sum ->  1 }T
T{  2 0 divisor-sum ->  2 }T
T{  3 0 divisor-sum ->  2 }T
T{  4 0 divisor-sum ->  3 }T
T{  5 0 divisor-sum ->  2 }T
T{  6 0 divisor-sum ->  4 }T
T{  7 0 divisor-sum ->  2 }T
T{  8 0 divisor-sum ->  4 }T
T{  9 0 divisor-sum ->  3 }T
T{ 10 0 divisor-sum ->  4 }T
T{ 11 0 divisor-sum ->  2 }T
T{ 12 0 divisor-sum ->  6 }T
T{ 13 0 divisor-sum ->  2 }T
T{ 14 0 divisor-sum ->  4 }T
T{ 15 0 divisor-sum ->  4 }T
T{ 16 0 divisor-sum ->  5 }T
T{ 17 0 divisor-sum ->  2 }T
T{ 18 0 divisor-sum ->  6 }T
T{ 19 0 divisor-sum ->  2 }T
T{ 20 0 divisor-sum ->  6 }T
T{ 21 0 divisor-sum ->  4 }T
T{ 22 0 divisor-sum ->  4 }T
T{ 23 0 divisor-sum ->  2 }T
T{ 24 0 divisor-sum ->  8 }T
T{ 25 0 divisor-sum ->  3 }T
T{ 26 0 divisor-sum ->  4 }T
T{ 27 0 divisor-sum ->  4 }T
T{ 28 0 divisor-sum ->  6 }T
T{ 29 0 divisor-sum ->  2 }T
T{ 30 0 divisor-sum ->  8 }T
T{ 31 0 divisor-sum ->  2 }T
T{ 32 0 divisor-sum ->  6 }T
T{ 33 0 divisor-sum ->  4 }T
T{ 34 0 divisor-sum ->  4 }T
T{ 35 0 divisor-sum ->  4 }T
T{ 36 0 divisor-sum ->  9 }T
T{ 37 0 divisor-sum ->  2 }T
T{ 38 0 divisor-sum ->  4 }T
T{ 39 0 divisor-sum ->  4 }T
T{ 40 0 divisor-sum ->  8 }T
T{ 41 0 divisor-sum ->  2 }T
T{ 42 0 divisor-sum ->  8 }T
T{ 43 0 divisor-sum ->  2 }T
T{ 44 0 divisor-sum ->  6 }T
T{ 45 0 divisor-sum ->  6 }T
T{ 46 0 divisor-sum ->  4 }T
T{ 47 0 divisor-sum ->  2 }T
T{ 48 0 divisor-sum -> 10 }T
T{ 49 0 divisor-sum ->  3 }T
T{ 50 0 divisor-sum ->  6 }T
T{ 51 0 divisor-sum ->  4 }T
T{ 52 0 divisor-sum ->  6 }T
T{ 53 0 divisor-sum ->  2 }T
T{ 54 0 divisor-sum ->  8 }T
T{ 55 0 divisor-sum ->  4 }T
T{ 56 0 divisor-sum ->  8 }T
T{ 57 0 divisor-sum ->  4 }T
T{ 58 0 divisor-sum ->  4 }T
T{ 59 0 divisor-sum ->  2 }T
T{ 60 0 divisor-sum -> 12 }T
T{ 61 0 divisor-sum ->  2 }T
T{ 62 0 divisor-sum ->  4 }T
T{ 63 0 divisor-sum ->  6 }T
T{ 64 0 divisor-sum ->  7 }T
T{ 65 0 divisor-sum ->  4 }T
T{ 66 0 divisor-sum ->  8 }T
T{ 67 0 divisor-sum ->  2 }T
T{ 68 0 divisor-sum ->  6 }T
T{ 69 0 divisor-sum ->  4 }T
T{ 70 0 divisor-sum ->  8 }T
T{ 71 0 divisor-sum ->  2 }T
T{ 72 0 divisor-sum -> 12 }T
T{ 73 0 divisor-sum ->  2 }T
T{ 74 0 divisor-sum ->  4 }T
T{ 75 0 divisor-sum ->  6 }T
T{ 76 0 divisor-sum ->  6 }T

\ https://oeis.org/A000203
T{  1 1 divisor-sum ->   1 }T
T{  2 1 divisor-sum ->   3 }T
T{  3 1 divisor-sum ->   4 }T
T{  4 1 divisor-sum ->   7 }T
T{  5 1 divisor-sum ->   6 }T
T{  6 1 divisor-sum ->  12 }T
T{  7 1 divisor-sum ->   8 }T
T{  8 1 divisor-sum ->  15 }T
T{  9 1 divisor-sum ->  13 }T
T{ 10 1 divisor-sum ->  18 }T
T{ 11 1 divisor-sum ->  12 }T
T{ 12 1 divisor-sum ->  28 }T
T{ 13 1 divisor-sum ->  14 }T
T{ 14 1 divisor-sum ->  24 }T
T{ 15 1 divisor-sum ->  24 }T
T{ 16 1 divisor-sum ->  31 }T
T{ 17 1 divisor-sum ->  18 }T
T{ 18 1 divisor-sum ->  39 }T
T{ 19 1 divisor-sum ->  20 }T
T{ 20 1 divisor-sum ->  42 }T
T{ 21 1 divisor-sum ->  32 }T
T{ 22 1 divisor-sum ->  36 }T
T{ 23 1 divisor-sum ->  24 }T
T{ 24 1 divisor-sum ->  60 }T
T{ 25 1 divisor-sum ->  31 }T
T{ 26 1 divisor-sum ->  42 }T
T{ 27 1 divisor-sum ->  40 }T
T{ 28 1 divisor-sum ->  56 }T
T{ 29 1 divisor-sum ->  30 }T
T{ 30 1 divisor-sum ->  72 }T
T{ 31 1 divisor-sum ->  32 }T
T{ 32 1 divisor-sum ->  63 }T
T{ 33 1 divisor-sum ->  48 }T
T{ 34 1 divisor-sum ->  54 }T
T{ 35 1 divisor-sum ->  48 }T
T{ 36 1 divisor-sum ->  91 }T
T{ 37 1 divisor-sum ->  38 }T
T{ 38 1 divisor-sum ->  60 }T
T{ 39 1 divisor-sum ->  56 }T
T{ 40 1 divisor-sum ->  90 }T
T{ 41 1 divisor-sum ->  42 }T
T{ 42 1 divisor-sum ->  96 }T
T{ 43 1 divisor-sum ->  44 }T
T{ 44 1 divisor-sum ->  84 }T
T{ 45 1 divisor-sum ->  78 }T
T{ 46 1 divisor-sum ->  72 }T
T{ 47 1 divisor-sum ->  48 }T
T{ 48 1 divisor-sum -> 124 }T
T{ 49 1 divisor-sum ->  57 }T
T{ 50 1 divisor-sum ->  93 }T
T{ 51 1 divisor-sum ->  72 }T
T{ 52 1 divisor-sum ->  98 }T
T{ 53 1 divisor-sum ->  54 }T
T{ 54 1 divisor-sum -> 120 }T
T{ 55 1 divisor-sum ->  72 }T
T{ 56 1 divisor-sum -> 120 }T
T{ 57 1 divisor-sum ->  80 }T
T{ 58 1 divisor-sum ->  90 }T
T{ 59 1 divisor-sum ->  60 }T
T{ 60 1 divisor-sum -> 168 }T
T{ 61 1 divisor-sum ->  62 }T
T{ 62 1 divisor-sum ->  96 }T
T{ 63 1 divisor-sum -> 104 }T
T{ 64 1 divisor-sum -> 127 }T
T{ 65 1 divisor-sum ->  84 }T
T{ 66 1 divisor-sum -> 144 }T
T{ 67 1 divisor-sum ->  68 }T
T{ 68 1 divisor-sum -> 126 }T
T{ 69 1 divisor-sum ->  96 }T
T{ 70 1 divisor-sum -> 144 }T
T{ 71 1 divisor-sum ->  72 }T
T{ 72 1 divisor-sum -> 195 }T
T{ 73 1 divisor-sum ->  74 }T
T{ 74 1 divisor-sum -> 114 }T
T{ 75 1 divisor-sum -> 124 }T
T{ 76 1 divisor-sum -> 140 }T

\ https://oeis.org/A001157
T{  1 2 divisor-sum ->    1 }T
T{  2 2 divisor-sum ->    5 }T
T{  3 2 divisor-sum ->   10 }T
T{  4 2 divisor-sum ->   21 }T
T{  5 2 divisor-sum ->   26 }T
T{  6 2 divisor-sum ->   50 }T
T{  7 2 divisor-sum ->   50 }T
T{  8 2 divisor-sum ->   85 }T
T{  9 2 divisor-sum ->   91 }T
T{ 10 2 divisor-sum ->  130 }T
T{ 11 2 divisor-sum ->  122 }T
T{ 12 2 divisor-sum ->  210 }T
T{ 13 2 divisor-sum ->  170 }T
T{ 14 2 divisor-sum ->  250 }T
T{ 15 2 divisor-sum ->  260 }T
T{ 16 2 divisor-sum ->  341 }T
T{ 17 2 divisor-sum ->  290 }T
T{ 18 2 divisor-sum ->  455 }T
T{ 19 2 divisor-sum ->  362 }T
T{ 20 2 divisor-sum ->  546 }T
T{ 21 2 divisor-sum ->  500 }T
T{ 22 2 divisor-sum ->  610 }T
T{ 23 2 divisor-sum ->  530 }T
T{ 24 2 divisor-sum ->  850 }T
T{ 25 2 divisor-sum ->  651 }T
T{ 26 2 divisor-sum ->  850 }T
T{ 27 2 divisor-sum ->  820 }T
T{ 28 2 divisor-sum -> 1050 }T
T{ 29 2 divisor-sum ->  842 }T
T{ 30 2 divisor-sum -> 1300 }T
T{ 31 2 divisor-sum ->  962 }T
T{ 32 2 divisor-sum -> 1365 }T
T{ 33 2 divisor-sum -> 1220 }T
T{ 34 2 divisor-sum -> 1450 }T
T{ 35 2 divisor-sum -> 1300 }T
T{ 36 2 divisor-sum -> 1911 }T
T{ 37 2 divisor-sum -> 1370 }T
T{ 38 2 divisor-sum -> 1810 }T
T{ 39 2 divisor-sum -> 1700 }T
T{ 40 2 divisor-sum -> 2210 }T
T{ 41 2 divisor-sum -> 1682 }T
T{ 42 2 divisor-sum -> 2500 }T
T{ 43 2 divisor-sum -> 1850 }T
T{ 44 2 divisor-sum -> 2562 }T
T{ 45 2 divisor-sum -> 2366 }T
T{ 46 2 divisor-sum -> 2650 }T
T{ 47 2 divisor-sum -> 2210 }T
T{ 48 2 divisor-sum -> 3410 }T
T{ 49 2 divisor-sum -> 2451 }T
T{ 50 2 divisor-sum -> 3255 }T
T{ 51 2 divisor-sum -> 2900 }T
T{ 52 2 divisor-sum -> 3570 }T
T{ 53 2 divisor-sum -> 2810 }T
T{ 54 2 divisor-sum -> 4100 }T
T{ 55 2 divisor-sum -> 3172 }T
T{ 56 2 divisor-sum -> 4250 }T
T{ 57 2 divisor-sum -> 3620 }T
T{ 58 2 divisor-sum -> 4210 }T
T{ 59 2 divisor-sum -> 3482 }T
T{ 60 2 divisor-sum -> 5460 }T
T{ 61 2 divisor-sum -> 3722 }T
T{ 62 2 divisor-sum -> 4810 }T
T{ 63 2 divisor-sum -> 4550 }T
T{ 64 2 divisor-sum -> 5461 }T
T{ 65 2 divisor-sum -> 4420 }T
T{ 66 2 divisor-sum -> 6100 }T
T{ 67 2 divisor-sum -> 4490 }T
T{ 68 2 divisor-sum -> 6090 }T
T{ 69 2 divisor-sum -> 5300 }T
T{ 70 2 divisor-sum -> 6500 }T
T{ 71 2 divisor-sum -> 5042 }T
T{ 72 2 divisor-sum -> 7735 }T
T{ 73 2 divisor-sum -> 5330 }T
T{ 74 2 divisor-sum -> 6850 }T
T{ 75 2 divisor-sum -> 6510 }T
T{ 76 2 divisor-sum -> 7602 }T

T{   1 divisors ->                                               1  1 }T
T{   2 divisors ->                                           2   1  2 }T
T{   3 divisors ->                                           3   1  2 }T
T{   4 divisors ->                                       4   2   1  3 }T
T{   5 divisors ->                                           5   1  2 }T
T{   6 divisors ->                                   6   3   2   1  4 }T
T{   7 divisors ->                                           7   1  2 }T
T{   8 divisors ->                                   8   4   2   1  4 }T
T{   9 divisors ->                                       9   3   1  3 }T
T{  10 divisors ->                                  10   5   2   1  4 }T
T{  11 divisors ->                                          11   1  2 }T
T{  12 divisors ->                          12   6   4   3   2   1  6 }T
T{  13 divisors ->                                          13   1  2 }T
T{  14 divisors ->                                  14   7   2   1  4 }T
T{  15 divisors ->                                  15   5   3   1  4 }T
T{  16 divisors ->                              16   8   4   2   1  5 }T
T{  17 divisors ->                                          17   1  2 }T
T{  18 divisors ->                          18   9   6   3   2   1  6 }T
T{  19 divisors ->                                          19   1  2 }T
T{  20 divisors ->                          20  10   5   4   2   1  6 }T
T{  21 divisors ->                                  21   7   3   1  4 }T
T{  22 divisors ->                                  22  11   2   1  4 }T
T{  23 divisors ->                                          23   1  2 }T
T{  24 divisors ->                  24  12   8   6   4   3   2   1  8 }T
T{  25 divisors ->                                      25   5   1  3 }T
T{  26 divisors ->                                  26  13   2   1  4 }T
T{  27 divisors ->                                  27   9   3   1  4 }T
T{  28 divisors ->                          28  14   7   4   2   1  6 }T
T{  29 divisors ->                                          29   1  2 }T
T{  30 divisors ->                  30  15  10   6   5   3   2   1  8 }T
T{  31 divisors ->                                          31   1  2 }T
T{  32 divisors ->                          32  16   8   4   2   1  6 }T
T{  33 divisors ->                                  33  11   3   1  4 }T
T{  34 divisors ->                                  34  17   2   1  4 }T
T{  35 divisors ->                                  35   7   5   1  4 }T
T{  36 divisors ->              36  18  12   9   6   4   3   2   1  9 }T
T{  37 divisors ->                                          37   1  2 }T
T{  38 divisors ->                                  38  19   2   1  4 }T
T{  39 divisors ->                                  39  13   3   1  4 }T
T{  40 divisors ->                  40  20  10   8   5   4   2   1  8 }T
T{  41 divisors ->                                          41   1  2 }T
T{  42 divisors ->                  42  21  14   7   6   3   2   1  8 }T
T{  43 divisors ->                                          43   1  2 }T
T{  44 divisors ->                          44  22  11   4   2   1  6 }T
T{  45 divisors ->                          45  15   9   5   3   1  6 }T
T{  46 divisors ->                                  46  23   2   1  4 }T
T{  47 divisors ->                                          47   1  2 }T
T{  48 divisors ->          48  24  16  12   8   6   4   3   2   1 10 }T
T{  49 divisors ->                                      49   7   1  3 }T
T{  50 divisors ->                          50  25  10   5   2   1  6 }T
T{  51 divisors ->                                  51  17   3   1  4 }T
T{  52 divisors ->                          52  26  13   4   2   1  6 }T
T{  53 divisors ->                                          53   1  2 }T
T{  54 divisors ->                  54  27  18   9   6   3   2   1  8 }T
T{  55 divisors ->                                  55  11   5   1  4 }T
T{  56 divisors ->                  56  28  14   8   7   4   2   1  8 }T
T{  57 divisors ->                                  57  19   3   1  4 }T
T{  58 divisors ->                                  58  29   2   1  4 }T
T{  59 divisors ->                                          59   1  2 }T
T{  60 divisors ->  60  30  20  15  12  10   6   5   4   3   2   1 12 }T
T{  61 divisors ->                                          61   1  2 }T
T{  62 divisors ->                                  62  31   2   1  4 }T
T{  63 divisors ->                          63  21   9   7   3   1  6 }T
T{  64 divisors ->                      64  32  16   8   4   2   1  7 }T
T{  65 divisors ->                                  65  13   5   1  4 }T
T{  66 divisors ->                  66  33  22  11   6   3   2   1  8 }T
T{  67 divisors ->                                          67   1  2 }T
T{  68 divisors ->                          68  34  17   4   2   1  6 }T
T{  69 divisors ->                                  69  23   3   1  4 }T
T{  70 divisors ->                  70  35  14  10   7   5   2   1  8 }T
T{  71 divisors ->                                          71   1  2 }T
T{  72 divisors ->  72  36  24  18  12   9   8   6   4   3   2   1 12 }T
T{  73 divisors ->                                          73   1  2 }T
T{  74 divisors ->                                  74  37   2   1  4 }T
T{  75 divisors ->                          75  25  15   5   3   1  6 }T
T{  76 divisors ->                          76  38  19   4   2   1  6 }T

: test-traverse-divisors negate swap 1+ true ;
T{ 47 52 ' test-traverse-divisors traverse-divisors -> -1 -2 -4 -13 -26 -52 53 }T
