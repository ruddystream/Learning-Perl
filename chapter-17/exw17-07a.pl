#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 07a
# --------------------------------
# Given the start of a program that looks up the characters’ bowling 
# scores, add a line to create the hash using a hash slice. The names 
# are the keys, and the values are their scores.
#

use strict;
use warnings;

my @bowler_names = qw(Fred Barney Dino); 
my @bowling_scores = qw(230 190 30 );
my %scoresheet;

# CREATE THE HASH HERE... ...;
@scoresheet{ @bowler_names } = @bowling_scores;

foreach my $name ( sort keys %scoresheet ) { 
	print "$name has score $scoresheet{$name}\n"; 
}