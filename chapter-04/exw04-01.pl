#!/usr/bin/perl

use 5.010;

sub show_args {
	print( "The arguments are @_. \n" );
}

show_args( 'fred', 'barny', 'wilma', 'betty' );
