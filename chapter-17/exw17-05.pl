#!/usr/bin/perl

###
# Chapter 17 Workbook Exercise 05
# -------------------------------
# Given a single. multiline string stored in one scalar, transform it 
# so that each of the names at the beginning of each line have an 
# initial capital letter, and the rest of the name is in lowercase 
# letters.
#

use strict;
use warnings;

my $modified_string = "";
my $initial_string = "fRED has score 230
barney has score 190
DINO has score 30";

print "INITIAL STRING:\n--------------\n$initial_string\n\n";

( $modified_string = $initial_string ) =~ s/^(.*)\b?/\u\L$1/mg;

print "MODIFIED STRING:\n---------------\n$modified_string\n";