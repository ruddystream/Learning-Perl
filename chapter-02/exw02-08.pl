#!/usr/bin/perl

use warnings;

my $code_point;

print( "Enter a code point, and I'll tell you the character.\n\n" );

print( "CP: " );
while ( $code_point = <STDIN> ) {
	chomp( $code_point );
	print( "\tThat's a .oO ", chr( hex( $code_point ) ), "  Oo.\n" );
	print( "CP: " );
}
print( "\nLaters.\n\n" );
