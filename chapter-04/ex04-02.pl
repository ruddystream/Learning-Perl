#!/usr/bin/perl

use strict;
use warnings;

sub total {
	my $totes = 0; 

	foreach ( @_ ) {
		$totes += $_;
	}

	return $totes;

}

my @numlist = ( 1..1000 );
my $numlist_total = total( @numlist );

print "The total of \@numlist is $numlist_total.\n";

