#!/usr/bin/perl

###
# Chapter 12 Exercise 01
# ----------------------
# Make a program that takes a list of files named on the command line and 
# reports for each one whether it’s readable, writable, executable, or 
# doesn’t exist.
#
# usage:
#   ex12-01.pl 
#

use strict;
use warnings;

sub check_file {
	my $f = shift @_;
	
	print "checking $f:\n";
	
	if ( ! -e $f ) {
		print "  $f does not exist.\n";
		return;
	} else {
		print "  $f exists.\n";
	}

	if ( -r _ ) {
		print "  $f is readable.\n";
	} else {
		print "  $f is not readable.\n";
	}

	if ( -w _ ) {
		print "  $f is writable.\n";
	} else {
		print "  $f is not writable.\n";
	}

	if ( -x _ ) {
		print "  $f is executable.\n";
	} else {
		print "  $f is not writable.\n";
	}


}

foreach my $file ( @ARGV ) {
	check_file( $file );
}