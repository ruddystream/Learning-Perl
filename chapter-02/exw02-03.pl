#!/usr/bin/perl

use warnings;

# This program will produce this warning if you use a non-numerical input:
#   $ ./exw02-03.pl
#   I will tell you if an integer is odd or even.
#   So, enter an integer: apple
#   Argument "apple" isn't numeric in modulus (%) at ./exw02-03.pl line 11, <STDIN> line 1.
#   apple is... EVEN.

my $number = 0;
print( "I will tell you if an integer is odd or even.\n" );

print( "So, enter an integer: " );
chomp( $number = <STDIN> );

if ( $number % 2 == 1 ) {
	print( "$number is... ODD.\n" );
} else {
	print( "$number is... EVEN.\n" );
}
