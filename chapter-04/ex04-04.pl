#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

## Functions
sub greet {
	state $last_seen;
	my $newbie = shift;

	print( "Hi, $newbie! " );
	if ( $last_seen ) {
		print( "$last_seen is also here!\n" );
	} else {
		print( "You are the first one here!\n" );
	}

	$last_seen =  $newbie;
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
