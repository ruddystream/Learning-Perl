#!/usr/bin/perl

use 5.010;

sub show_args {
	print( "The arguments are @_. \n" );
}

sub show_args_again {
	print( "Again, the arguments are: @_. \n" );
	&show_args;
}

show_args_again( 'fred', 'barny', 'wilma', 'betty' );
