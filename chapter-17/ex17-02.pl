#!/usr/bin/perl

###
# Chapter 17 Exercise 02
# ----------------------
# Write a program to make a report of the access and modification times 
# (in the epoch time) of the files in the current directory. Use stat 
# to get the times, using a list slice to extract the elements.
#

use strict;
use warnings;

my @all_files;
my $fmt = "%15s     | %10i    | %10i\n";

eval { @all_files = glob "*"; };
if ( $@ ) { print "$@"; }

printf "%15s     | %10s    |  %10s", "FILENAME", "ATIME", "MTIME\n";
printf "%15s-----+-%10s----+--%10s\n", " " . "-"x14, "-"x10, "-"x10;

foreach my $file ( @all_files ) {
	my ( $atime, $mtime ) = ( stat($file) )[8,9];
	printf $fmt, $file, $atime, $mtime;
}

