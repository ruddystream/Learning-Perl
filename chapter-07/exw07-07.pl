#!/usr/bin/perl

###
# Chapter 07 Workbook Exercise 07
# Use the Unicode properties to match lines that have numbers or whitespace.
#
# usage:
#   exw07-07.pl 
#
# output:
#   ...
#

use strict;
use warnings;

my $datafile = "./testdata2";

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	while ( <DATAFILE> ) {
		chomp ( $_ );
		print "In $_: \n";
		if ( /\p{Digit}/ ) {
			print "  Matched a digit.\n"; 
		}

		if ( /\p{Space}/ ) {
			print "  Matched a whitespace.\n";
		}
	}
}