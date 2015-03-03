#!/usr/bin/perl

my $first_number   = 1;
my $second_number  = 1;

print( "If you enter two numbers, I will give you their product.\n\n" );

print( "First Number:  " );
chomp( $first_number = <STDIN> );

print( "Second Number: " );
chomp( $second_number = <STDIN> );

print( "The product of $first_number and $second_number is...\n\n\t\t" . $first_number * $second_number . "!\n\n" ); 
