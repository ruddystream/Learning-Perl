#!/usr/bin/perl

###
# Chapter 08 Exercise 2
# Using the pattern test program, make a pattern that matches if any word 
# (in the \w sense of word) ends with the letter a.
#
# usage:
#   ex08-02.pl 
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
		if ( /(\b\w*a\b)/ ) {
			print "MATCH:    |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}