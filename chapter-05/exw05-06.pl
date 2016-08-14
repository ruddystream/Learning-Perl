#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 6
# Write a program that takes a list of whole numbers from the 
# command line and prints them in a right-aligned column.
#
# usage:
#   exw05-06.pl 1 2345 67 890
#
# output:
#       1
#    2345
#      67
#     890
#

use strict;
use warnings;


my $number;
my $maxlen = 0;

foreach $number ( @ARGV ) {
	my $l = length $number ;
	if ( $l > $maxlen ) {
		$maxlen = $l;
	}
}

foreach $number ( @ARGV ) {
	printf "%${maxlen}d\n", $number;
}