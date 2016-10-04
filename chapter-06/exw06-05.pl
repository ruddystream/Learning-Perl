#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 05
# Write a program to create a birthday report. Use the hash you created 
# for Exercise 6.4 and output each entry that has a birthday. Go through 
# each entry of the hash with a foreach loop.
#
# usage:
#   exw06-05.pl 
#
# output:
#   Name's birthday is Jan 1 2009!
#

use strict;
use warnings;

my $name;
my %flintstones_birthdays = (
	'Fred'    => "April 5",
	'Wilma'   => "October 26",
	'Pebbles' => "October 8",
	'Dino'    => "July 1",
	'Barney'  => "",
	'Slate'   => undef,
);

foreach $name ( keys %flintstones_birthdays ) {
	# check if the name has an associated birthday
	if ( $flintstones_birthdays{$name} ) {
		printf "%s's birthday is %s!\n", $name, $flintstones_birthdays{$name};
	} else {
		printf "I don't know when %s's birthday is!\n", $name;
	}
}