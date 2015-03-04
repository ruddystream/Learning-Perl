#!/usr/bin/perl

use warnings;

# This will print the following warnings if you enter non-numberic data:
#   Argument ... isn't numeric in numeric gt (>) at ./exw02-06.pl line 22, <STDIN> line 2.
#   Argument ... isn't numeric in numeric gt (>) at ./exw02-06.pl line 22, <STDIN> line 2.

my $first_number;
my $second_number;

print( "I will tell you which of two numbers is larger.\n" );

print( "The first: " );
chomp( $first_number = <STDIN> );

print( "The second: " );
chomp( $second_number = <STDIN> );

if ( $first_number > $second_number ) {
	print( "$first_number is greater than $second_number\n\n" );
} elsif ( $second_number > $first_number ) {
	print( "$second_number is greater than $first_number\n\n" );
} else {
	print( "The numbers are equal.\n\n" );
}
