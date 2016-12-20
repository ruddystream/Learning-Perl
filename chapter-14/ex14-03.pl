#!/usr/bin/perl

###
# Chapter 14 Exercise 03
# ----------------------
# Make a program that looks through a given string for every occurrence of a 
# given substring, printing out the positions where the substring is found.
#

use strict;
use warnings;

my $string			= "";
my $substring		= "";
my $found_positions	= "";
my $plural 			= "";

print "Enter a line of text, please: ";
chomp ( $string = <STDIN> );

print "Now enter a substring to search for, please: ";
chomp ( $substring = <STDIN> );
{
	my $position = -1;
	while ( 1 ) {
		$position = index( "$string", "$substring", $position+1 );
	
		last if ( $position == -1 );
	
		if ( $found_positions eq "" ) {
			$found_positions = "$position";
		} else {
			$plural = "s";
			$found_positions = $found_positions . ", $position";
		}
	
	}
}
print "Your string: $string\n";
if ( $found_positions eq "" ) {
	print "I didn't find \"$substring\" in there.\n";
} else {
	print "I found \"$substring\" at position$plural $found_positions.\n";	
}
