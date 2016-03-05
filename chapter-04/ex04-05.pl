#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

## Functions
sub greet {
	state @seen;
	my $newbie = shift;

	print( "Hi, $newbie! " );
	if ( defined @seen ) {
		print( "I've seen: @seen!\n" );
	} else {
		print( "You are the first one here!\n" );
	}

	@seen = ( $newbie, @seen );
	return;
}

print( "Let's invite some people to our party...\n" );
print( "Fred. " );
greet( "Fred" );

print( "Barney. " );
greet( "Barney" );

print( "Wilma. " );
greet( "Wilma" );

print( "Betty. " );
greet( "Betty" );
