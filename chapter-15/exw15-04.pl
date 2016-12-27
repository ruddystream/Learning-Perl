#!/usr/bin/perl

###
# Chapter 15 Workbook Exercise 04
# -------------------------------
# Write a program that prompts you for two lists of words. Use the smart match 
# operator to report if these two lists are the same or not. To make things 
# easier, enter each list on a single line then split that line on whitespace.
#

use strict;
use warnings;

my (@list_one, @list_two);
my ($input_one, $input_two);

print "Enter a list on a single line: \n";
chomp( $input_one = <STDIN> );
@list_one = split /\s+/, $input_one;

print "Enter another list on a single line: \n";
chomp( $input_two = <STDIN> );
@list_two = split /\s+/, $input_two;

if ( @list_one ~~ @list_two ) {
	print " The lists are the same.\n";
} else {
	print " The list are different.\n";
}

