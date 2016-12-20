#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 03
# -------------------------------
# Write a program that takes a starting column value, an ending column, and a 
# filename. Go through the lines of the file and print only the portions of 
# each line from the start column to the end column. Use substr to get the 
# right part of the string.
#

use strict;
use warnings;

sub usage {
	print "\n\tUSAGE: $0 starting_column end_column file_name\n";
}

unless ( @ARGV == 3 ) {
	usage();
	die "\tSo, there's this: $!";
}

my $starting_column	= $ARGV[0];
my $end_column		= $ARGV[1];
my $length 			= $end_column - $starting_column + 1;
my $filename;
if ( -e $ARGV[2] ) {
	$filename 		= $ARGV[2];
} else {
	usage();
	die "\t$ARGV[2] doesn't exist: $!.\n";
}

my $DATAFILEHANDLE;

if ( ! open $DATAFILEHANDLE, "<", "$filename" ) {
	die "\tI couldn't find $filename\n";
} else {
	while ( <$DATAFILEHANDLE> ) {
		chomp;
		next if ( /\A\z/ );
		print  substr( $_, $starting_column, $length ), "\n";
	}
}