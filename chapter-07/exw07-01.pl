#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 01
# Write a program that matches a string containing either “fred” or 
# “barney” then reports the part of the string before the match, the 
# part of the string after the match, and the name that it matched.
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
		if ( /(.*)(fred|barney)(.*)/ ) {
			print "Matched $2\n";
			print "  before: $1\n";
			print "  after:  $3\n";
		}
	}
}