#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 04
# -------------------------------
# Use the map function to create a list of the squares of the numbers 
# from 1 to 10.
#

use strict;
use warnings;

my @squares = map { $_ ** 2 } 1..10;

print "@squares\n";