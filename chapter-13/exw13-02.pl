#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 02
# -------------------------------
# Modify your answer to Exercise 13.1 to also report the sum of all the file 
# sizes (but don’t try to get the sizes of subdirectories).
#

use strict;
use warnings;
use 5.010;

my ( $count, $size )  = ( 0, 0 );
my $verbage;

opendir my $dh, '.' or die "Couldn't open '.': $!";

foreach ( sort readdir $dh ) {
	next if -d;
	$count += 1;
	$size += (-s) / 1024 ;
}

closedir $dh;

if ( $count == 1 ) {
	$verbage = "is";
} else {
	$verbage = "are";
}

print "There $verbage $count files in this directory\n"; 
printf "The total size of all the files is %.2f kb.\n", $size;