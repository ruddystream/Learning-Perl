#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 9
# 
# Write a program that takes a filename from the command line. 
# If the file exists, open the file and print the first line. 
# If you can’t open the file, use die to report the reason.
#
# usage:
#   exw05-09.pl filename
#
# output:
#   (first line of filename)
#

use strict;
use warnings;

my $filename = $ARGV[0];
my $firstline;

if ( ! open FILE, '<', $filename ) {
	die ( "$!" );
}

$firstline = <FILE>;

print "$firstline\n";

close FILE;
