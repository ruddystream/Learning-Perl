#!/usr/bin/perl

use strict;
use warnings;

sub total {
	my $totes; 
	my $num;
	my @new_fred;
	( $num, @new_fred ) = @_;

	print( "num: $num\n" );

	if ( $#new_fred >= 0 ) {
		return ( $num + total( @new_fred ) );
	} else {
		return $num;
	}

}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total( @fred );
my $user_total;

print "The total of \@fred is $fred_total.\n";

print "Now, give me numbers, on separate lines!\n";
$user_total = total( <STDIN> );

print "The total of those numbers is $user_total.\n";
