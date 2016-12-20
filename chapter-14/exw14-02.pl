#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 02
# -------------------------------
# Write a program to read lines of input and report the position of the 
# last “e” in the line. Use rindex.
#

use strict;
use warnings;


print "I will look for the last 'e' in text you enter. A blank line quits.\n";

while ( 1 ) {

	my $position = 0;
	my $string = "";

	print "\nEnter a line of text, please: ";
	chomp ( $string = <STDIN> );

	last if ( $string =~ m/\A\z/ );

	$position = rindex( "$string", "e" );

	if ( $position == -1 ) {
		print "\tThere's no 'e' in that string.\n";
	} else {
		print "\tI found the last 'e' at position $position.\n";
	}
}

print "\nThanks for playing!\n";
