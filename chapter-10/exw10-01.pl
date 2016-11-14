#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 01
# -------------------------------
# Write a program that reads in lines of input and prints them unless they 
# contain the words “ruby” or “python”.
#
# usage:
#   exw10-01.pl 
#
# output:
#   ...
#

use strict;
use warnings;

print "enter lines of text.\n";

while (<>) {                   # take one input line at a time
    chomp;
    print "$_\n" unless ( m/ruby|python/i );
}