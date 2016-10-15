#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 03
# Write a program to match a line that has an “a”, a “b”, and a “c”, 
# in that order, but must have at least one other character between 
# each of those letters.
#
# usage:
#   exw07-03.pl 
#
# output:
#   ...
#

use strict;
use warnings;

my $datafile = "./testdata";

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	while ( <DATAFILE> ) {
		if ( /a.+b.+c/ ) {
			print "Matched: $_";
		}
	}
}