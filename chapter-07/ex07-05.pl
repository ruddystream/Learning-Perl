#!/usr/bin/perl

###
# Chapter 07 Exercise 05
# Make a program that prints each line that has a two of the same 
# nonwhitespace characters next to each other.
#
# usage:
#   ex07-05.pl
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
		if ( /(\p{alpha})\g{1}/ ) {
			print "this line matched: $_";
		}
	}
}