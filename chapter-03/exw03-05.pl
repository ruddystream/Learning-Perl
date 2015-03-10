#!/usr/bin/perl

#use warnings;
my $max = 10;
my @numbers = ();

print( "Give me a number, and I'll show you a list of squares and cubes.\n" );
print( "GIVE IT TO ME NOW: " );
$max = <STDIN>;
if ( $max += 0 ) {
	@numbers = ( 1..$max );
	print( "\nnumber\tsquare\tcube\n" );
	print( "------\t------\t----\n" );
	while ( $number = shift @numbers ) {
		print( "$number\t", $number**2, "\t", $number**3, "\n" );
	}
} else {
	print( "I TRUSTED YOU\n" );
}

