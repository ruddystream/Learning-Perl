#!/usr/bin/perl

###
# Chapter 17 Exercise 03
# ----------------------
# Modify your answer to Exercise 2 to report the times using the 
# YYYY-MM-DD format. Use a map with localtime and a slice to turn the 
# epoch times into the date strings that you need.
#

use strict;
use warnings;

sub process_date {
	my ( $y, $m, $d ) = ( localtime( shift @_ ) )[5,4,3];
	$y += 1900;
	$m += 1;
	sprintf '%4d-%02d-%02d', $y, $m, $d;
}

my @all_files;
my $fmt = "%15s | %11s | %13s\n";

eval { @all_files = glob "*"; };
if ( $@ ) { print "$@"; }

printf $fmt, "FILENAME", "ACCESS TIME", "MODIFIED TIME";
printf "%15s-+-%11s-+--%13s\n", " " . "-"x14, "-"x11, "-"x13;

foreach my $file ( @all_files ) {
	my ($atime, $mtime) = map {
		&process_date( $_ );
	}( stat( $file ) )[8,9];

	printf $fmt, $file, $atime, $mtime;
}

