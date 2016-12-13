#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 05
# -------------------------------
# Write a program that looks in the current working directory then lists 
# all of the Perl programs and their size. Use opendir to find the files.
#

use strict;
use warnings;
use 5.010;

printf " %-25s %10s   %2s %2s %2s\n", "Name", "Size";
printf "-" x 37 . "\n";

opendir my $dh, '.' or die "Couldn't open '.': $!";

while ( readdir( $dh ) ) {
	next if ( -d );
	next if ( ! /\.pl\z/ );
	my $name = $_;
	my $size = ( -s ) ;
	my ( $r, $w, $x ) = ( " ", " ", " " );
	$r = "x" if ( -r );
	$w = "x" if ( -w );
	$x = "x" if ( -x );

	printf " %-25s %9.0fb\n", $name, $size; 
}


closedir $dh;

