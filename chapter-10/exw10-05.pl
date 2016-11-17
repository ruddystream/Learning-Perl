#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 05
# -------------------------------
# Write a program to count the number of lines in a Perl program. Skip blank 
# lines and lines that only have a comment.
#
# usage:
#   exw10-05.pl 
#

use strict;
use warnings;
use 5.010;

# Use this script as the input.
my $datafile;
my $DATAFILEHANDLE;
my $linecount = 0;

print "I WILL COUNT THE LINES OF CODE IN YOUR PERL PROGRAM\n\n";
print "  ENTER A SCRIPT NAME: ";
chomp( $datafile = <STDIN> );

if ( ! open $DATAFILEHANDLE, "<", "./$datafile" ) {
	die "I couldn't find $datafile.\n";
} else {
	print "  ";
	while ( <$DATAFILEHANDLE> ) {
		print ".";
		chomp;
		next if ( m/\A\s*#/ );
		next if ( m/\A\z/ );
		$linecount += 1;
	}
}

print "\n  COUNT IS COMPLETE\n";
print "  $linecount CODE LINES FOUND\n"