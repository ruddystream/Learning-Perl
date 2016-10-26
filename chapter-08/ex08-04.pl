#!/usr/bin/perl

###
# Chapter 08 Exercise 4
# Modify the program from the previous exercise to use named captures 
# instead of relying on $1. Update the code to display that label name, 
# something like 'word' contains 'Wilma'.
# 
# usage:
#   ex08-04.pl 
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
		if ( m/(?<fargle>\b\w*a\b)/ ) {
			print "In $_, fargle contains '$+{fargle}'\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}