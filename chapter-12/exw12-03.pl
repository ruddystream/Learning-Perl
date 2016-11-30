#!/usr/bin/perl

###
# Chapter 12 Workbook Exercise 03
# -------------------------------
# Use the stacked file test operators to report the filenames from the command 
# line that are readable, writeable, and executable. 
#

use strict;
use warnings;
use 5.010;

die "Please enter a file name on the command line.\n" unless @ARGV;

my @file_list;

foreach my $file ( @ARGV ) {

	next if ( ! -e $file );
	if ( -R -W -X $file ) {	
		push @file_list, $file;
	}
}

if  ( $#file_list > 0 ) {
	print "The list of files readable, writable, and executable are: \n";
	foreach my $file ( @file_list ) {
		print "  $file\n";
	}
} else {
	print "There are no files in the given list of files that are all \nreadable, writeable, and executable. Sorry.\n";
}