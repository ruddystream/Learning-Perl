#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 13
# Write a program that converts a file encoded as UTF-8 into 
# UTF-16BE. Use Perl’s encoding layers to read the data in the 
# correct format and output the same data in the new encoding.

# usage:
#   exw05-12.pl filenamein filenameout 
#
# output:
#   (file with line endings converted)
#

use strict;
use warnings;

my $filenamein  = $ARGV[0];
my $filenameout = $ARGV[1];

if ( ! open UTF8, '<:encoding(UTF-8)', $filenamein ) {
	die "Couldn't open $filenamein for reading. $!";
}

if ( ! open UTF16BE, '>:encoding(UTF-16BE)', $filenameout ) {
	die "Couldn't open $filenameout for writing. $!";
}

foreach ( <UTF8> ) {
	print UTF16BE $_;
}

close UTF8;
close UTF16BE;