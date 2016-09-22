#!/usr/bin/perl

###
# Chapter 06 Workbook Exercise 02
# Modify the program from Exercise 6.1 so it prompts for the user for a name, 
# and then reports the birthday for that name.
#
# usage:
#   exw06-02.pl 
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

