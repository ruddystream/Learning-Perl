#!/usr/bin/perl

###
# Chapter 08 Workbook Exercise 4
# Write a regular expression that matches a string that begins and ends 
# with the same thing, without overlap between the two parts of the string.
# 
# usage:
#   exw08-04.pl 
#

use strict;
use warnings;

my $datafile = "./testdata";

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	while (<DATAFILE>) {							# take one input line at a time
		chomp;
		if ( m/\A(.+).*\g{-1}\z/ ) {
			print "Matched: |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}