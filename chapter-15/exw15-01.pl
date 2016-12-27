#!/usr/bin/perl

###
# Chapter 15 Workbook Exercise 01
# -------------------------------
# Use the smart match operator in a program that prompts the user for a 
# string and reports if that string is an element of an array you specify in 
# your program. You only have to match exact elements.
#

use strict;
use warnings;

my @array = qw(Fred Wilma Barney Betty Larry Pebbles Bamm-Bamm);
my $name;

print "The elements are (@array)\n";

print "Enter a name: ";
chomp ( $name = <STDIN> );
if ( $name ~~ @array ) {
	print "  $name was in the array.\n";
} else {
	print "  $name was not in the array.\n";
}