#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 02
# -------------------------------
# Write a program that counts the number of lines of input until it finds 
# the word “perl” then stops and reports the last line number.
#
# usage:
#   exw10-02.pl 
#
# output:
#   ...
#

use strict;
use warnings;

my $counter = 0;

print "I'll count your lines of text until you say 'perl'.\n";

while (<>) {                   # take one input line at a time
	$counter++;
	last if ( m/perl/ );
}

print "You entered $counter lines before you said 'perl'.\n";