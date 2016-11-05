#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 4
# Read lines from standard input and print them in four versions: the original 
# string, all uppercase, all lowercase, and all lowercase except for the first 
# character in the string. Use the case-shifting operators inside double-quoted 
# strings.
# 
# usage:
#   exw09-04.pl 
#

use strict;
use warnings;

my $string;

print "Enter a string (or say 'goodbye' to quit): ";

while ( chomp ( $string = <> ) ) {

	if ( $string eq "goodbye" ) {
		print "Goodbye to you, as well, friend.\n";
		exit;
	}

	print "What a great string. Here it is:\n";
	print "  $string\n\n";

	print "All uppercase:\n";
	print "  \U$string\n\n";

	print "All lowercase:\n";
	print "  \L$string\n\n";

	print "Properly capitalized:\n";
	$string =~ s/(\A\S)(.*\z)/\u\L$1\E$2/;
	print "  $string\n\n";

	print "Enter another string (or say 'goodbye' to quit): ";

}