#!/usr/bin/perl

###
# Chapter 12 Exercise 02
# ----------------------
# Make a program to identify the oldest file named on the command line 
# and report its age in days.
#
# usage:
#   ex12-02.pl 
#

use strict;
use warnings;

die "Please enter a file name on the command line.\n" unless @ARGV;

my $oldest_file = shift @ARGV;
my $oldest_age = -M $oldest_file;

foreach my $file ( @ARGV ) {

	next if ( ! -e $file );
	my $current_age = -M $file;

	if ( $current_age > $oldest_age ) {
		$oldest_age = $current_age;
		$oldest_file = $file;
	}
}

printf "The oldest file specified is %s, at %d days.\n", $oldest_file, $oldest_age;
