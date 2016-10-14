#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 04
# Write a program to match a string that contains an “a”, but doesn’t 
# have a “b” anywhere after the “a”.
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
		if ( /a/ ) {
			if ( ! /b/ ) {
				print "Matched: $_";
			} 
		}
	}
}