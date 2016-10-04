#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 03/4
# Modify the program from Exercise 6.1 so it prompts for the user for a name, 
# and then reports the birthday for that name.
#
# AND
# 
# What happens in your program for Exercise 6.3 if the user-entered 
# name is in the hash, but does not have a birthday? Add a couple of 
# entries to the hash: one with a value of undef, and one with a value 
# of the empty string. Modify your program for Exercise 6.3 to tell 
# the user that you don’t know the birthday if the key is in the hash, 
# but does not have a value.
#
# (Combined 3 & 4 together, since I seem to have skipped over 3, but 
# still did it anyhow.)
#
# usage:
#   exw06-04.pl 
#
# output:
#   enter a person's name: 
#   Name, January 1
#   
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

my $input;
my $output;

print "enter a Flintstone's name: ";

chomp ( $input = <STDIN> );

if ( $flintstones_birthdays{$input} ) {
	$output = $flintstones_birthdays{$input};
} elsif ( exists $flintstones_birthdays{$input} ) {
	$output = "birthday not set"
} else {
		$output = "person not known";
}

print "$input, $output.\n";

