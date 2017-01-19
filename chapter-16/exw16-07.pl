#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 07
# -------------------------------
# Write a program that reads in lines of input and counts the number 
# of lines with of e’s in them. Use your program from Exercise 16.4 as 
# the source of input.
#

use strict;
use warnings;

open my $lines, '-|', '/usr/bin/perl', 'exw16-04.pl';
my $total = 0;

while ( <$lines> ) {
	$total += 1 if ( /e/ );
}

print "$total lines had an 'e' in them.\n";
