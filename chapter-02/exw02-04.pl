#!/usr/bin/perl

use warnings;

# This program will not produce a warning, having taken out the "chomp"
# around the input.

my $number = 0;
print( "I will tell you if an integer is odd or even.\n" );

print( "So, enter an integer: " );
$number = <STDIN>;

if ( $number % 2 == 1 ) {
	print( "$number is... ODD.\n" );
} else {
	print( "$number is... EVEN.\n" );
}
