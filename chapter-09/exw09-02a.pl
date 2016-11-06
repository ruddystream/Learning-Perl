#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 2
# In Chapter 8, you created some case-insensitive regular expressions, 
# and if you only used the stuff from Learning Perl up to Chapter 8, 
# you had to do a bit of work. Rewrite the regular expressions from 
# Exercise 8.1 and Exercise 8.5 for what you know from this chapter.
#
# usage:
#   exw09-02.pl 
#

use strict;
use warnings;

my $datafile = "./testdata";

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	while (<DATAFILE>) {							# take one input line at a time
		chomp;
		if ( /[abx]/i ) {
			print "Matched: |$`<$&>$'|\n";	# the special match vars
		} else {
			print "No match: |$_|\n";
		}
	}
}