#!/usr/bin/perl

###
# Chapter 12 Workbook Exercise 04
# -------------------------------
# Write a program that takes two numbers from the command line, prints 
# their binary representation then prints their logical-ANDed value.
#

use strict;
use warnings;
use 5.014;

die "Please enter a couple of numbers on the command line.\n" unless @ARGV;

my $numberone   = pop @ARGV;
my $numbertwo   = pop @ARGV;

my $numberthree = $numberone & $numbertwo;  # <-- THIS IS WRONG??!? 

print "\n";
printf "   %20b\n", $numberone;
printf "   & %18b\n", $numbertwo;
print  "  -", "-"x 21, "\n";
printf "   %20b\n", $numberone & $numbertwo;
#printf "   %20b\n", $numberthree;            <-- THIS IS WRONG??!?
print "\n";
