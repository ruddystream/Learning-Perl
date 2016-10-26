#!/usr/bin/perl

###
# Chapter 08 Exercise 6
# Write a new program (not the test program!) that prints out any input line 
# ending with whitespace (other than just a newline). Put a marker character 
# at the end of the output line so as to make the whitespace visible.
#
# usage:
#   ex08-06.pl 
#
# output:
#   ...
#

use strict;
use warnings;

while (<>) {
	chomp;
	if ( /(\s+)\z/ ) {
		print "$`++$1++\n";
	}
}