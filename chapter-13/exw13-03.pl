#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 03
# -------------------------------
# Write a program that looks in the current working directory and creates a 
# columnar report of all files, their sizes, and whether they are readable, 
# writeable, and executable. Use opendir and a while loop.
#

use strict;
use warnings;
use 5.010;

printf " %-25s %10s  %2s %2s %2s\n", "Name", "Size", "R", "W", "X";
printf "-" x 45 . "\n";

opendir my $dh, '.' or die "Couldn't open '.': $!";

while ( readdir( $dh ) ) {
	next if ( -d );
	my $name = $_;
	my $size = ( -s ) / 1024;
	my ( $r, $w, $x ) = ( " ", " ", " " );
	$r = "x" if ( -r );
	$w = "x" if ( -w );
	$x = "x" if ( -x );

	printf " %-25s%10.0f  %2s %2s %2s\n", $name, $size, $r, $w, $x; 
}


closedir $dh;

#if ( $count == 1 ) {
#	$verbage = "is";
#} else {
#	$verbage = "are";
#}
#
#print "There $verbage $count files in this directory\n"; 
#printf "The total size of all the files is %.2f kb.\n", $size;