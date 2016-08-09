#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 01
# Write a program to read lines from all of the files on the 
# command line and print out each line prefaced with its filename.
#
# usage:
#   exw05-01.pl input1 input2 input3
#
# output:
#   input1:
#     asdf
#   input2:
#     cxzv
#   input3:
#     qwer
#

use strict;
use warnings;

my $file;

foreach $file ( @ARGV ) {

	if ( ! open FILETOOUTPUT, "<", "$file" ) {
		print "couldn't open $file!";
	} else {
		while ( <FILETOOUTPUT> ) {
			chomp;
			print "$file: $_\n";
		}

	}
}
