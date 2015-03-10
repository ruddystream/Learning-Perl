#!/usr/bin/perl

use warnings;

print( "\nnumber\tsquare\tcube\n" );
print( "------\t------\t----\n" );
foreach $number ( 1..10 ) {
	print( "$number\t", $number**2, "\t", $number**3, "\n" );
}

