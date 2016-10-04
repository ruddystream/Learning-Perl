#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 06
# Modify your program from Exercise 6.5 to go through the hash with the 
# each function instead of a foreach loop. 
#
# usage:
#   exw06-06.pl 
#
# output:
#   Name's birthday is Jan 1 2009!
#

use strict;
use warnings;

my ($name, $birthday);
my %flintstones_birthdays = (
	'Fred'    => "April 5",
	'Wilma'   => "October 26",
	'Pebbles' => "October 8",
	'Dino'    => "July 1",
	'Barney'  => "",
	'Slate'   => undef,
);

while ( ( $name, $birthday ) = each %flintstones_birthdays ) {
	if ( $birthday ) {
		printf "%s's birthday is %s!\n", $name, $birthday;
	} else {
		printf "I don't know when %s's birthday is!\n", $name;

	}
}
