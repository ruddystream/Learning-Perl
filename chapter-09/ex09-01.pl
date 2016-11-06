#!/usr/bin/perl
#
## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.
#

###
# Chapter 09 Exercise 1
# Make a pattern that will match three consecutive copies of whatever is currently contained in $what.
#
# usage:
#   ex09-01.pl 
#
# output:
#   ...
#

use strict;
use warnings;

my $datafile = "./testdata";
my $what = 'fred|barney';

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	while (<DATAFILE>) {							# take one input line at a time
		chomp;
	    if (/($what){3}/) {
    	    print "Matched: |$`<$&>$'|\n";  # the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}
