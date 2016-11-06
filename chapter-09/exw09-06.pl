#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 7
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
my $outputfile = "./testdata.psv";
my ( $datafilehandle, $outputfilehandle );
my ( @header, @data );
my ( $index, $output );

# Check if the datafile exists.
if ( ! open $datafilehandle, "<", "$datafile" ) {
	die "Please create and populate $datafile.\n";
} else {
	chomp( $_ = <$datafilehandle> );
	@header = split /\t/;
	if ( ! open $outputfilehandle, ">", "$outputfile" ) {
		die "Can't open $outputfile for some reason.\n";
	}

	$output = join "|", @header;
	print $outputfilehandle "$output\n";

	while (<$datafilehandle>) {					# take one input line at a time
		chomp;
		@data = split /\t/;
		$output = join "|", @data;
		print $outputfilehandle "$output\n";
	}
}
