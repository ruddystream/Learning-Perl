#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 04
# -------------------------------
# Using a for loop, write a program to report a table of squares and cubes 
# for the multiples of 3 between 3 and 99.
#
# usage:
#   exw06-04.pl 
#

use strict;
use warnings;

print " number | square | cube   \n";
print "--------+--------+--------\n";

for ( my $i=3; $i<100; $i+=3 ) {
	printf "  %-5d |  %-5d | %d \n", $i, $i**2, $i**3;
}