#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 06
# -------------------------------
# Given an array whose elements are the numbers from 0 to 1,000, use an 
# array slice to 
# a) select the first and last numbers (in that order), 
# b) the last and first numbers (in that order), 
# c) the first ten numbers, and 
# d) the odd numbers.
#

use strict;
use warnings;
use 5.018;

my @all_the_nums   = ( 0..1000 );
my @first_and_last = @all_the_nums[0,-1];
my @last_and_first = @all_the_nums[-1,0];
my @first_ten_nums = @all_the_nums[0..9];
my @the_odd_nums   = @all_the_nums[ (grep { $_ % 2 } (0..$#all_the_nums) )];

print "First and Last:\n @first_and_last\n";
print "Last and First:\n @last_and_first\n";
print "First ten nums:\n @first_ten_nums\n";
print "The odd nums:\n @the_odd_nums\n";