#!/usr/bin/perl

my $pi      = 3.141592654;
my $radius  = 1;
my $circ    = "";

print( "Enter a radius: " );
chomp( $radius = <STDIN> );
if ( $radius > 0 ) {
	$circ    = 2 * $pi * $radius;
	print( "The circumference of a circle of $radius radius is... \n\n\t\t $circ!\n\n" );
} else {
	$circ    = 0;
	print( "A circle with negative circumference cannot exist on this mathematical plane so we'll call it... \n\n\t\t0!\n\n" );
}


