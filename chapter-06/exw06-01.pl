#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 01
# Given a list of names and birthdays, create a hash to store them. 
# Print the contents of the hash.
#
# usage:
#   exw06-01.pl 
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
);

foreach $name ( sort keys %flintstones_birthdays ) {
	printf "%s, %s\n", $name, $flintstones_birthdays{$name};
}