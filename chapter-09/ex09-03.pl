#!/usr/bin/perl
#
## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.
#

###
# Chapter 09 Exercise 3
# Modify the previous program to change every Fred to Wilma and every Wilma 
# to Fred. Now input like fred&wilma should look like Wilma&Fred in the 
# output.
#
# usage:
#   ex09-03.pl filename
#

use strict;
use warnings;

my $infile;
my $outfile;
my $fred = "Fred";
my $wilma = "Wilma";
my $placeholder = "\0";


if ( ! defined $ARGV[0] ) {
	die "Please supply a filename on the command line.\n";
}

my $datafile = $ARGV[0];
my $datafileout = "$datafile.ex3.out";

# Check if the datafile exists.
if ( ! open $infile, "<", "$datafile" ) {
	die "Please create and populate $datafile.\n";
} else {
	if ( ! open $outfile, ">", "$datafileout" ) {
		die "Couldn't open $datafileout for writing, for some reason.\n";
	}
	while (<$infile>) {							# take one input line at a time
		chomp;
	    s/$fred/$placeholder/ig;
	    s/$wilma/$fred/ig;
	    s/$placeholder/$wilma/ig;
    	print $outfile "$_\n";
	}
}
