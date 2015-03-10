#!/usr/bin/perl

use warnings;

print( "Enter some lines, and I'll reverse them.\n" );

print( "ENTER NOW: \n" );

my @lines = <STDIN>;

print( "\nNOW REVERSE IT\n" );
print( reverse @lines );
