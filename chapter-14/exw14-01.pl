#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 01
# -------------------------------
# Write a program to read lines of input and report the position of the 
# first mention of “perl” on each line.
#

use strict;
use warnings;


print "I will look for 'perl' in text you enter. A blank line quits.\n";

while ( 1 ) {

	my $position = 0;
	my $string = "";

	print "\nEnter a line of text, please: ";
	chomp ( $string = <STDIN> );

	last if ( $string =~ m/\A\z/ );

	$position = index( "$string", "perl" );

	if ( $position == -1 ) {
		print "\tThere's no 'perl' in that string.\n";
	} else {
		print "\tI found 'perl' at position $position.\n";
	}
}

print "\nThanks for playing!\n";
