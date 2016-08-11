#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 05
# Write a program that takes two whole numbers from the command 
# line then uses printf to report in columns their sum, product, 
# and the percent fraction (to two decimal places) of the numbers. 
# 
# usage:
#   exw05-01.pl 5 6
#
# output:
# first   second    sum    product      %
#    5        6     11         30     83.33%
#

use strict;
use warnings;

my $numone  = $ARGV[0];
my $numtwo  = $ARGV[1];

my $sum     = $numone + $numtwo;
my $product = $numone * $numtwo;

my $percent;

if ( $numtwo == 0 ) {
	$percent = 0;
} else {
	$percent = $numone / $numtwo * 100;

}


print " first   second    sum    product      %\n";
printf "%5d %8d %6d %10s %9.2f%%\n", $numone, $numtwo, $sum, $product, $percent;
