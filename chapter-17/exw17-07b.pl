#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 07b
# --------------------------------
# Once you’ve done that, change the program to create the hash using a map.
#

use strict;
use warnings;

my @bowler_names = qw(Fred Barney Dino); 
my @bowling_scores = qw(230 190 30 );
my %scoresheet;

# CREATE THE HASH HERE... ...;
%scoresheet = map { ( $bowler_names[$_], $bowling_scores[$_] ) } 0..$#bowler_names;

foreach my $name ( sort keys %scoresheet ) { 
	print "$name has score $scoresheet{$name}\n"; 
}