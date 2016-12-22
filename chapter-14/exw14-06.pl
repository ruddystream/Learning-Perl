#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 06
# -------------------------------
# Create two arrays, one for the first names and one for the last names, 
# for the Flintstones characters such that the elements in each array align 
# with each other. Go through only one of the arrays with each and use the 
# array index to access the other array. For each character, output their 
# first and last names on the same line, with every character’s full name 
# on a separate line.
#

use strict;
use warnings;
use 5.012;

my @first = qw(Fred Barney Betty Wilma Larry);
my @last = qw(Flintstone Rubble Rubble Flintstone Slate);

while ( my( $index, $value ) = each @first ) {
	print " $value $last[$index]\n";
}