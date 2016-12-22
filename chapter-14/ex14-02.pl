#!/usr/bin/perl

###
# Chapter 14 Exercise 02
# ----------------------
# Make a program that will print the last_name hash’s data sorted in 
# case-insensitive alphabetical order by last name. When the last names 
# are the same, sort those by first name (again, without regard for case). 
# That is, the first name in the output should be Fred’s, while the last 
# one should be Betty’s. All of the people with the same family name should 
# be grouped together. Don’t alter the data. The names should be printed 
# with the same capitalization.
#

use strict;
use warnings;

my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub bedrock {
	# sort by last name, case insensitively.
	"\L$last_name{$a}" cmp "\L$last_name{$b}"

	or

	# sort by first name, case insensitively.
	"\L$a" cmp "\L$b";
}

my @sorted = sort bedrock keys %last_name;

foreach ( @sorted ) {
	print "$last_name{$_}, $_\n";
}