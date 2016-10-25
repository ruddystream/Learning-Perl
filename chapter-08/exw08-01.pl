#!/usr/bin/perl

###
# Chapter 08 Workbook Exercise 1
# Write a regular expression to match an “a”,"b”, or “x” in a string. 
# Use a character class. After you do that, make it case insensitive.
#
# usage:
#   exw08-01.pl 
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
		if ( /[aAbBxX]/ ) {
			print "Matched: |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}