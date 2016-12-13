#!/usr/bin/perl

###
# Chapter 13 Exercise 04
# ----------------------
# Write a program that works like rm, deleting any files named on the 
# command line. (You don’t need to handle any of the options of rm.)
#

use strict;
use warnings;
use 5.010;

# A small safety measure:
chdir './tmp' or die "Couldn't chdir to our tmp directory: $!";

foreach ( @ARGV ) {
	if ( -e ) {
		unlink $_ or warn "Can't unlink '$_': $!\n";
	} else {
		print "Cannot find '$_' to unlink.\n";
	}
}