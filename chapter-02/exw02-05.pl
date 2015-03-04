#!/usr/bin/perl

use warnings;

# precedence;

# 3 ** 4, then 2 ** 81.
# Order matters, as the answer is 20 orders of magnitude different.
print( 2 ** 3 ** 4 . "\n" );

# 2 / 3, then (2/3) * 4. 
print( 2 / 3 * 4 . "\n" );

# 4**5, then 3 * 1024, then 3072 + 2 -6. 
# The power and multiplication order matter, but not the addition or subtraction.
print( 2 + 3 * 4 ** 5 -6 . "\n" );
