#!/usr/bin/perl

###
# Chapter 17 Exercise 01
# ----------------------
# Make a program that reads a list of strings from a file, one string per 
# line, and then lets the user interactively enter patterns that may match 
# some of the strings.
#

use strict;
use warnings;
use 5.018;
use autodie;

my $datafile = "testdata.dat";
my $FH;
my @data;

open $FH, "<", "$datafile";

chomp( @data = <$FH> );

print "WELCOME TO THE STRINGFINDER\n";
print "-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n";

print "Please enter regular expressions to search for in the sample data.\n";
print "Regexes must be properly formatted.\n\n";

while ( 1 ) {
	my $regex;
	my @result;
	my $count; 
	print "Enter a regex: ";
	chomp ( $regex = <STDIN> );

	last if ( $regex =~ /\A\z/ );

	eval {
		@result = grep { /$regex/ } @data;
	};
	if ( $@ ) { 
		print "$@"; 
	} else {
		$count = @result;
		print "There were $count matching strings.\n";
		print map "$_\n\n", @result;

	}

}

print "\nThanks for playing.\n\n";