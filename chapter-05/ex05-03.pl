#!/usr/bin/perl

###
# Chapter 05 Exercise 01
# Write a program that asks the user to enter a number and a list of strings 
# on separate lines, as well as a number, printing each string 
# right-justified, at the column specified by the number.
#
# usage:
#   ex05-03.pl
#
# output:
#   input3 input2 input1
#

use strict;
use warnings;

my $aligncols;
my @lines;
my $line;
my $format;

print "Please enter a column width: ";
chomp ( $aligncols = <STDIN> );
$format =  "%" . $aligncols . "s\n";
# OR
# $format = "%${aligncols}s\n";

print "Please enter strings, one to a line (press CTRL-D to submit): \n";
chomp ( @lines = <STDIN> );


print "\n";
print "1234567890" x 7, "12345\n";
foreach $line ( @lines ) {
	printf $format, $line;
}