#!/usr/bin/perl

###
# Chapter 07 Exercise 04
# Make a program that prints each line that has a word that is capitalized 
# but not ALL capitalized.
#
# usage:
#   ex07-04.pl
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
		if ( /[A-Z][a-z]+/ ) {
			print "this line matched: $_";
		}
	}
}