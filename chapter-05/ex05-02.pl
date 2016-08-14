#!/usr/bin/perl

###
# Chapter 05 Exercise 02
# Write a program that asks the user to enter a list of strings on separate 
# lines, printing each string in a right-justified, 20-character column.
# 
#
# usage:
#   ch05-01.pl
#
# output:
#   1234567890123456789012334567890...
#                 input3 
#              input-two 
#                input-3
#

use strict;
use warnings;

my @lines;
my $line;

print "Please enter strings, one to a line (press CTRL-D to submit):\n";
chomp ( @lines = <STDIN> );

print "\n";
print "1234567890" x 7, "12345\n";
foreach $line ( @lines ) {
	printf "%20s\n", $line;
}