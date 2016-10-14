#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 06
# Use a relative backreference to construct a pattern to match a sequence 
# of at least three characters that repeats itself at some point in the 
# string.
#
# usage:
#   exw07-04.pl 
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
		if ( /(...+).*(...+).*\g{-2}.*\g{-1}/ ) {
			print "Matched ($1, $2): $_"; 
		}
	}
}