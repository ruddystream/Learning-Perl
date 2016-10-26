#!/usr/bin/perl

###
# Chapter 08 Exercise 1
# Using the pattern test program, make a pattern to match the string 
# match. Try the program with the input string beforematchafter.
#
# usage:
#   ex08-01.pl 
#
# output:
#   ...
#

use strict;
use warnings;

while (<>) {							# take one input line at a time
	chomp;
	if ( /match/ ) {
		print "Matched: |$`<$&>$'|\n";	# the special match vars
	} else {
		print "No match: |$_|\n";
	}
}