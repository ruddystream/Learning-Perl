#!/usr/bin/perl

use warnings;

my @entered_strings = ();

print( "I will 'sort' strings you enter on separate lines.\n" );
print( "ENTER NOW:\n" );

@entered_strings = <STDIN>;

print( "\nHERE THEY ARE:\n", sort( @entered_strings ) );
@entered_strings = ();

print( "Let's do that again.\n" );
print( "I will 'sort' strings you enter on separate lines.\n" );
print( "This time I will spew them all out on one line.\n" );
print( "ENTER NOW:\n" );

chomp( @entered_strings = <STDIN> );
print( "\nHERE THEY ARE:\n", sort( @entered_strings ) );

