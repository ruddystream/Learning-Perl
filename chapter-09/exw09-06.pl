#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 6
# Create a file of tab-separated values, including a line that has the 
# names of each column of values. Write a program that reads in the 
# file and produces a report for each line.
#
# usage:
#   exw09-06.pl 
#

use strict;
use warnings;

my $datafile = "./testdata.tsv";
my $DATAFILEHANDLE;
my ( @header, @data );
my $index;

# Check if the datafile exists.
if ( ! open $DATAFILEHANDLE, "<", "$datafile" ) {
	print "Please create and populate $datafile.\n";
	exit 1;
} else {
	chomp( $_ = <$DATAFILEHANDLE> );
	@header = split /\t/;

	while (<$DATAFILEHANDLE>) {					# take one input line at a time
		chomp;
		@data = split /\t/;
		foreach $index ( 0 .. $#data ) {
			print "$header[$index]:\t$data[$index]\n";
		}
		print "\n";

	}
}
