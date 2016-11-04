#!/usr/bin/perl
#
## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.
#

###
# Chapter 09 Exercise 2
# Write a program that makes a modified copy of a text file. In the copy, 
# every string Fred (case-insensitive) should be replaced with Larry.
#
# usage:
#   ex09-02.pl filename
#
# output:
#   ...
#

use strict;
use warnings;

my $datafile = $ARGV[0];
my $datafileout;
my $infile;
my $outfile;
my $pattern = "fred";


if ( ! defined $datafile ) {
	die "Please supply a filename on the command line.\n";
}

# Check if the datafile exists.
if ( ! open $infile, "<", "$datafile" ) {
	die "Please create and populate $datafile.\n";
} else {
	$datafileout = "$datafile.ex2.out";
	if ( ! open $outfile, ">", "$datafileout" ) {
		die "Couldn't open $datafileout for writing, for some reason.\n";
	}
	while (<$infile>) {							# take one input line at a time
		chomp;
	    s/$pattern/Larry/ig;
    	print $outfile "$_\n";
	}
}
