#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 05
# Use a relative backreference to construct a pattern to match a sequence 
# of at least three characters that repeats itself at some point in the 
# string.
#
# usage:
#   exw07-05.pl 
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
# OOPS: Not a character that repeats itself three times, a three character 
#       pattern that repeats itself!		
#		if ( /(\p{alpha}).*\g{-1}.*\g{-1}/ ) {
# HMMM: This also matches whitespace, which seems not quite right!
# 		if ( /(...+).*\g{-1}/ ) {
# WELL: Let's try Unicode Properties!
		if ( /(\p{Alpha}\p{Alpha}\p{Alpha}+).*\g{-1}/ ) {
			print "Matched ($1): $_"; 
		}
	}
}