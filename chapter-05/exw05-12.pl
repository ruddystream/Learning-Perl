#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 12
# Write a program that mimics the dos2unix program to convert 
# a file with a carriage-return/newline-pair into just a newline, 
# using encoding layers.
#
# usage:
#   exw05-12.pl filename 
#
# output:
#   (file with line endings converted)
#

use strict;
use warnings;

my $filename = $ARGV[0];

if ( ! open DOS, '<:crlf', $filename ) {
	die "Couldn't open $filename for reading. $!";
}

if ( ! open UNIX, '>', "$filename.conv" ) {
	die "Couldn't open $filename.conv for writing. $!";
}

foreach ( <DOS> ) {
	print UNIX $_;
}

close UNIX;
close DOS;