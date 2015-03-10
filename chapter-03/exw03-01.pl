#!/usr/bin/perl

use warnings;

my @strings = ();

print( "GIVE ME STRINGS: \n" );

chomp( @strings = <STDIN> );

if ( $#strings > 0 ) {
	print( "This is the second last one: $strings[-2]\n" );
} else {
	print( "I said strings, like more than one!\n" );
}

