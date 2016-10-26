#!/usr/bin/perl

###
# Chapter 08 Workbook Exercise 2b
# Modify the regular expressions from Exercise 8.1 to match the “a”, “b”, 
# or “x” at the beginning of the string. After that, modify it to match 
# any of those characters at the end of the string.
#
# usage:
#   exw08-02b.pl 
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
		if ( /[aAbBxX]\z/ ) {
			print "Matched: |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}