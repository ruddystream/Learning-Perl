#!/usr/bin/perl

###
# Chapter 14 Exercise 01
# ----------------------
# Write a program to read in a list of numbers and sort them numerically, 
# printing out the resulting list in a right-justified column.
#
# Test data: “17 1000 04 1.50 3.14159 –10 1.5 4 2001 90210 666”

use strict;
use warnings;

my @numbers;
my @sorted_numbers;
my $current = "1";

print "enter numbers, one per line. I'll sort them. Press enter to end.\n";

print "num $current: ";
# read input into array
while ( <> ) {
	chomp;
	last if ( /\A\z/ );
	push @numbers, $_;
	$current += 1;
	print "num $current: ";
}

# sort input
@sorted_numbers = sort @numbers;

# output in right-justified column
foreach my $num ( @sorted_numbers ) {
	printf "%15s\n", $num;	
}
