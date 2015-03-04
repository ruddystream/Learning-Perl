#!/usr/bin/perl

use warnings;

# Entering only a newline results in the following warning:
#   Argument "\n" isn't numeric in addition (+) 
my $sum = 0;
my $whozit;

print( "Keep entering numbers, and I'll sum them.  Stop with CTRL-D.\n" );

print( "enter a number: " );
while ( $whozit = <STDIN> ) {
	$sum += $whozit;
	print( "enter another number: " );
}

print( "The sum of all those numbers is... \n\n\t\t$sum!\n\n" );

