#!/usr/bin/perl

###
# Chapter 12 Exercise 03
# ----------------------
# Make a program that uses stacked file test operators to list all files 
# named on the command line that are readable, writable, and owned by you.
#
# usage:
#   ex12-03.pl 
#

use strict;
use warnings;
use 5.010;

die "Please enter a file name on the command line.\n" unless @ARGV;

my @file_list;

foreach my $file ( @ARGV ) {

	next if ( ! -e $file );
	if ( -R -W -O $file ) {	
		push @file_list, $file;
	}
}

if  ( $#file_list > 0 ) {
	print "The list of files readable, writable, and owned by you is: \n";
	foreach my $file ( @file_list ) {
		print "  $file\n";
	}
} else {
	print "There are no files in the given list of files owned by you. Sorry.\n";
}