#!/usr/bin/perl

my $string  = "shazam";
my $number  = 17;

print( "I will repeat something as many times as you tell me.\n" );

print( "What should I repeat?\n     " );
$string = <STDIN>;

print( "\nHow many times should I repeat it?\n     " );
$number = <STDIN>;

print( $string x $number );
