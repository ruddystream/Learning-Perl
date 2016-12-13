#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 06
# -------------------------------
# Rewrite the previous program to use glob and foreach.
#

use strict;
use warnings;
use 5.010;

printf " %-25s %10s   %2s %2s %2s\n", "Name", "Size";
printf "-" x 37 . "\n";

foreach ( glob "* .*" ) {
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

