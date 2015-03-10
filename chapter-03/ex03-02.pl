#!/usr/bin/perl

use warnings;
use diagnostics;

my @list_of_names = qw( fred betty barney dino wilma pebbles bam-bam gazoo );
my @list_of_number = ();

print( "List numbers between 1 and $#list_of_names, and I'll show you that name.\n" );

print( "LIST NUMBERS NOW: \n\n" );

chomp( @list_of_numbers = <STDIN> );

print( "\n" );
while( my( $index, $value ) = each @list_of_numbers ) {
	if ( $value <= $#list_of_names ) {
		print( "$value: $list_of_names[$value]\n" );
	}
}
