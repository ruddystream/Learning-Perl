#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 8
# Modify your answer to Exercise 5.7 to re-open STDERR to 
# a file in the current directory so you capture all of the 
# error output in that file. 
#
# usage:
#   exw05-08.pl one two three four
#
# output:
#   one:   5 lines
#   two:   7 lines
#   three: 6 lines
#   
#   >errorrorrers.log

use strict;
use warnings;

if ( ! open STDERR, '>>', './errorrorrers.log' ) {
	die "Can't open errorrorrers.log for append.\n";
}

my $file;

foreach $file ( @ARGV ) {
	if ( ! open FILE, '<', $file ) {
		warn "$file: $!";
	} else {
		my $count = 0;
		while ( <FILE> ) {
			$count = $count + 1;
		}
		printf "$file: $count lines.\n";
	}
	close FILE;
}