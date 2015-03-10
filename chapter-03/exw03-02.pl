#!/usr/bin/perl

use warnings;

my $current_string = "";
my $previous_string = "";
my $next_string = "";

print( "GIVE ME STRINGS: \n" );

$current_string = <STDIN>;
while( defined( $next_string = <STDIN> ) ) {
	( $previous_string, $current_string ) = ( $current_string, $next_string ) ;
}

if ( $previous_string ne "" ) {
	print( "This is the second last one: $previous_string\n" ); 
} else {
	print( "I said strings, like more than one!\n" );
}


