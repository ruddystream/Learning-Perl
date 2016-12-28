#!/usr/bin/perl

###
# Chapter 15 Exercise 03
# ----------------------
# Using for-when, write a program that goes through a list of files on the 
# command line and reports if each file is readable, writable, or executable. 
# You don’t need to use smart matching.
#

use strict;
use warnings;
use 5.018;

for ( @ARGV ) {
	print "Processing $_: \n";
	when ( /\A\.\.?\z/ ) { next; }
	when ( ! -e ) { print "  - does not exist!\n"; }
	when ( -r ) { print "  - is readable!\n"; continue; }
	when ( -w ) { print "  - is writable!\n"; continue; }
	when ( -x ) { print "  - is executable!\n" }
	
}
