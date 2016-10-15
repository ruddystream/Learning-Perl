#!/usr/bin/perl

###
# Chapter 07 Exercise 06
# Write a program that prints out any input line that mentions both wilma and fred.
#
# usage:
#   ex07-06.pl
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
		if ( /(([fF]red.*[wW]ilma)|([wW]ilma.*[fF]red))/ ) {
			print "this line matched: $_";
		}
	}
}