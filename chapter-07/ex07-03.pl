#!/usr/bin/perl

###
# Chapter 07 Exercise 03
# Make a program that prints each line of its input that contains a 
# period (.), ignoring other lines of input.
#
# usage:
#   exw07-01.pl
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
		if ( /\./ ) {
			print "this line matched: $_";
		}
	}
}