#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 7
# Write a program that goes through the list of files from 
# the command line and reports their line count. Use warn to 
# print a message for each file that does not exist.
#
# usage:
#   exw05-07.pl one two three four
#
# output:
#   one:   5 lines
#   two:   7 lines
#   three: 6 lines
#   File 'four' does not exist! at ./ex05-07.pl...

use strict;
use warnings;

my $file;

foreach $file ( @ARGV ) {
	if ( ! open FILE, '<', $file ) {
		warn "$file: $!";
	} else {
		my $count = 0;
		while ( <FILE> ) {
			$count = $count + 1;
		}
		printf "$file: $count lines.\n";
	}
	close FILE;
}