#!/usr/bin/perl

###
# Chapter 06 Exercise 02
# Write a program that reads a series of words (with one word per 
# line) until end-of-input, then prints a summary of how many 
# times each word was seen.
#
# usage:
#   exw06-02.pl 
#
# output:
#   Enter words (one per line, CTRL-D to finish).
# 
#   {word} was seen {count} times.
#

use strict;
use warnings;

my (@words, $word, %wordcount );

print "Enter words (one per line, CTRL-D to finish).\n";

chomp ( @words = <STDIN> );

foreach $word ( @words ) {
		$wordcount{$word} += 1;
}

foreach $word ( sort keys %wordcount ) {
	printf "%10s was seen %d times.\n", $word, $wordcount{$word};
}