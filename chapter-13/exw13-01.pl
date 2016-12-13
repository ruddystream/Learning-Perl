#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 01
# -------------------------------
# Write a program that reports the number of files in the current directory. 
# Don’t count special files . or .., but count the “hidden” files.
#

use strict;
use warnings;
use 5.010;

my $count = 0;
my $verbage;

opendir my $dh, '.' or die "Couldn't open '.': $!";

foreach ( sort readdir $dh ) {
	next if ( /\A\.\.?\z/ );
	$count += 1;
}

closedir $dh;

if ( $count == 1 ) {
	$verbage = "is";
} else {
	$verbage = "are";
}


print "There $verbage $count files in this directory.\n";