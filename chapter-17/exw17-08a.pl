#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 08a
# --------------------------------
# Add up the numbers from 1 to 1,000. Do it using the sum subroutine from 
# List::Util.
#

use strict;
use warnings;
use List::Util qw( sum );

print "The sum of the numbers from 1 to 1000 is " . sum( 1..1000 ) . ".\n";