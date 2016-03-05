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
	my $avg = total( @_ ) / $#_;
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
print( "\n" );

