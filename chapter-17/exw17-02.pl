#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 02
# -------------------------------
# Rewrite your answer to Exercise 17.1 to use Try::Tiny instead of eval.
#

use strict;
use warnings;
use Try::Tiny;

print "I will compare strings and regexes that you feed me.\nCTLR-C will exit.\n\n";

while ( 1 ) {
	my ( $regex, $string );

	print "Enter a STRING: ";
	chomp ( $string = <STDIN> );

	print "Enter a REGEX : ";
	chomp ( $regex = <STDIN> );

	try {
		if ( $string =~ /$regex/ ) {
			print "MATCH\n\n";
		} else {
			print "NO MATCH\n\n";
		}
	} catch {
		print "AN ERROR: $_\n";
	}
}