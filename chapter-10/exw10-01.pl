#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 01
# -------------------------------
# Exercise description.
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