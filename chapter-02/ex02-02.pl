#!/usr/bin/perl

my $pi      = 3.141592654;
my $radius  = 1;

print( "Enter a radius: " );
chomp( my $entered_radius = <STDIN> );

my $circ    = 2 * $pi * $radius;

print( "The circumference of a circle of $radius radius is... \n\n\t\t $circ!\n\n" );
