#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise XX
# Exercise description.
#
# usage:
#   exw05-01.pl 
#
# output:
#   ...
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
