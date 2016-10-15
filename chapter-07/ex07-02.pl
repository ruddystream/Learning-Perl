#!/usr/bin/perl

###
# Chapter 07 Exercise 01
# Modify the previous program to allow Fred to match as well.
#
# usage:
#   ex07-02.pl
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
		if ( /[Ff]red/ ) {
			print "this line matched: $_";
		}
	}
}