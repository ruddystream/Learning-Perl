#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 03
# -------------------------------
# Use the grep function to select the multiples of 3 between 1 and 1,000.
#

use strict;
use warnings;

my @multiples_of_three = grep { !($_ % 3) } 1..1000;

print "@multiples_of_three\n";