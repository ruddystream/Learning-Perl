#!/usr/bin/perl

###
# Chapter 13 Exercise 08
# ----------------------
# If your operating system supports it, write a program to find any symbolic 
# links in the current directory and print out their values (like ls -l 
# would: name -> value).
#

use strict;
use warnings;
use 5.010;

opendir my $dh, '.' or die "Couldn't open '.': $!";

foreach ( sort readdir $dh ) {
	if ( -l ) {
		my $actual = readlink;
		print "$_ -> $actual\n";
	}
}

closedir $dh;