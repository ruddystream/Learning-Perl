#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 5
# Modify your answer to Exercise 9.4 to also uppercase any letter after a 
# word boundary. Try it with and without the /r modifier for the 
# substitution operator.
# 
# usage:
#   exw09-05.pl 
#

use strict;
use warnings;
use 5.010;

my $string;
my $string_capitalized;
my $string_abominized;
my $string_abominized_again;

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
	( $string_capitalized = $string ) =~ s/(\A\S)(.*\z)/\u\L$1\E$2/;
	print "  $string_capitalized\n\n";

	print "Improperly Capitalized:\n";
	( $string_abominized = $string ) =~ s/(\b\w)/\U$1/g;
	print "  $string_abominized\n\n";

	print "Improperly Capitalized (Again):\n";
	$string_abominized_again = $string =~ s/(\b\w)/\U$1/gr;
	print "  $string_abominized_again\n\n";

	print "\nEnter another string (or say 'goodbye' to quit): ";

}