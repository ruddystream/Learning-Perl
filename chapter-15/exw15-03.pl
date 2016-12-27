#!/usr/bin/perl

###
# Chapter 15 Workbook Exercise 03
# -------------------------------
# Write a program that prompts the user for a regular expression pattern and 
# reports if any elements of an array match that pattern. Use the smart match 
# operator to check if that pattern matches. You don’t need to report which 
# elements match.
#

use strict;
use warnings;

my @array = qw(Fred Wilma Barney Betty Larry Pebbles Bamm-Bamm);
my $name_regex;

print "The elements are (@array)\n";
print "Enter a regex: ";
chomp ( $name_regex = <STDIN> );

if ( /$name_regex/ ~~ @array ) {
	print "  /$name_regex/ matches at least one element.\n";
} else {
	print "  /$name_regex/ does not match anything in the array.\n";
}