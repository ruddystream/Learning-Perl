#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 04
# Write a program that prompts the user for a whole number 
# then prints that number in binary, octal, decimal, and 
# hexadecimal notation. description.
#
# usage:
#   exw05-04.pl 
#
# output:
#   BINARY:  xx
#   OCTAL:   xx
#   DECIMAL: xx
#   HEX:     xx
#

use strict;
use warnings;

my $numone;

print "Give me a whole number.\n";
print "  Enter number NOW: ";
chomp( $numone =  <> );

print "The number is $numone.\n";
printf "  BINARY:  %b\n", $numone;
printf "  OCTAL:   %o\n", $numone;
printf "  DECIMAL: %d\n", $numone;
printf "  HEX:     %x\n", $numone;
