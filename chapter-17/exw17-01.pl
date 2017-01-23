#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 01
# -------------------------------
# Write a program that repeatedly asks the user for a string and a regular 
# expression then reports if the string matches the regular expression.
#

use strict;
use warnings;

print "I will compare strings and regexes that you feed me.\nCTLR-C will exit.\n\n";

while ( 1 ) {
	my ( $regex, $string );

	print "Enter a STRING: ";
	chomp ( $string = <STDIN> );

	print "Enter a REGEX : ";
	chomp ( $regex = <STDIN> );

	eval {
		if ( $string =~ /$regex/ ) {
			print "MATCH\n\n";
		} else {
			print "NO MATCH\n\n";
		}
	};
	if ( $@ ) {
		print "AN ERROR: $@\n";
	}
}