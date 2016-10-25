#!/usr/bin/perl

###
# Chapter 08 Workbook Exercise 3b
# Modify your regular expression from Exercise 8.2 to match a non-empty 
# string that doesn’t have an “a”, “b”, or “x” at the beginning of the 
# string. Change it again so the regular expression matches a non-empty 
# string that doesn’t have those same char- acters at the end of the string.
# 
# usage:
#   exw08-03b.pl 
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
		if ( m/[^aAbBxX]\z/ ) {
			print "Matched: |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}