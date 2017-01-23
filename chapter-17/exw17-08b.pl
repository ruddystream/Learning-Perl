#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 08b
# --------------------------------
# Redo Exercise 08a by using reduce from the same module.
#

use strict;
use warnings;
use List::Util qw( reduce );

our ( $a, $b );
my $foo = reduce { $a + $b } 1 .. 1000;
print "The sum of the numbers from 1 to 1000 is $foo.\n";