#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 03
# -------------------------------
# Write a program that reads lines of input and splits it into words. Use a 
# hash to keep a count of the number of times you’ve seen each word then 
# create a report of the count for each word.
#
# usage:
#   exw06-03.pl 
#

use strict;
use warnings;

my (@lines, $line, @words, $word, %wordcount );

my $datafile = "./testdata";

# Check if the datafile exists.
if ( ! open DATAFILE, "<", "$datafile" ) {
    print "Please create and populate $datafile.\n";
    exit 1;
} else {
    while ( @lines = <DATAFILE>) {

		foreach $line ( @lines ) {
			chomp( $line );
			$line = "\L$line";
			$line =~ s/[^a-z]/ /g;
			@words = split /\s/, $line;
			foreach $word ( @words ) {
				$wordcount{$word} += 1;
			}
		}
	}

	foreach $word ( sort keys %wordcount ) {
		printf "%-25s was seen %d times.\n", $word, $wordcount{$word};
	}

}