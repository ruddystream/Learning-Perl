#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 07
# In Exercise 6.1, you wrote a program to report the entries in the hash, 
# and since then you’ve added keys that have values that are undefined or 
# the empty string. Modify that first program to delete from the hash the 
# keys that don’t have true values then print the contents of the hash. 
#
# usage:
#   exw06-07.pl 
#
# output:
#   Name, January 1
#   ...
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
	if ( ! $flintstones_birthdays{$name} ) {
		delete $flintstones_birthdays{$name};

	}
}

foreach $name ( sort keys  %flintstones_birthdays ) {
	printf "%s, %s\n", $name, $flintstones_birthdays{$name};
}