#!/usr/bin/perl

use strict;
use warnings;

## Functions.
sub total {
	my $totes = 0; 

	foreach ( @_ ) {
		$totes += $_;
	}

	return $totes;
}

sub average {
	my $avg = total( @_ ) / ( $#_ + 1 );
	return $avg;
}

sub above_average {
	my $avg = average( @_ );
	my @above_avg_list;

	foreach ( @_ ) {
		if ( $_ > $avg ) {
			@above_avg_list = ( @above_avg_list, $_ );
		}
	}

	return @above_avg_list;
}

# Main Program.
my @numlist = ( 1..1000 ); 
my $numlist_total = total( @numlist );
my $numlist_average = average ( @numlist );
my @numlist_above_average = above_average( @numlist );

printf ( "The total of \@numlist is %.3f\n", $numlist_total );
printf ( "The average of \@numlist is %.3f\n", $numlist_average );
print( "The values of \@numlist that are above average are: " );
for ( @numlist_above_average ) {
	print ( "$_ " );
}
print( "\n\n" );

print( "Now, the test program.\n" );
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
