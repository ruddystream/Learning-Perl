#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 09
# -------------------------------
# Use the pairwise subroutine from List::MoreUtils to add the 
# corresponding elements in two arrays.
#

use strict;
use warnings;
use List::MoreUtils qw( pairwise );

my @m = ( 1, 2, 3 ); 
my @n = ( 4, 6, 8 );

our ( $a, $b );

my @o = pairwise { $a + $b } @m, @n;

print "The pairwise sums of ( @m ) and ( @n ) are ( @o ).\n";
