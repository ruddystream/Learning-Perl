#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 3
# Prompt the user for three strings and a regular expression. Apply the 
# regular expression to each string and report if it matches.
#
# usage:
#   exw09-03.pl 
#

use strict;
use warnings;

my @prompts = ( 'first', 'second', 'third' );
my $prompt;
my $stringinput;
my @strings;
my $string;
my $pattern;

print "Enter three strings, one after another: \n";
foreach $prompt ( @prompts ) {
	print "  Enter the $prompt string:\t";
	chomp ( $stringinput = <> );
	push @strings, $stringinput;
}

print "Now give me a pattern for the regex: \n";
chomp( $pattern = <> );

foreach $string ( @strings ) {
	if ( $string =~ /$pattern/ ) {
		print "Matched: |$`<$&>$'|\n";
	}
}
