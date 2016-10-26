#!/usr/bin/perl

###
# Chapter 08 Exercise 3
# Modify the program from the previous exercise so that the word ending 
# with the letter a is captured into $1. Update the code to display that 
# variable’s contents in single quotes, something like $1 contains 'Wilma'.
#
# usage:
#   ex08-03.pl 
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
			print "In $_, \$1 contains '$1'\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}