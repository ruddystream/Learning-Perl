#!/usr/bin/perl

###
# Chapter 13 Exercise 02
# ----------------------
# Modify the program to include all files, not just the ones that don’t begin 
# with a dot.
#

use strict;
use warnings;
use 5.010;

my $targetdir;
my @allfiles;

print "Hello, enter a directory, or nothing for your homedir: ";
chomp ( $targetdir = <STDIN> );

if ( $targetdir =~ /\A\p{SPACE}*\z/ ) {
	print "Showing ~\n";
	$targetdir = $ENV{HOME};
} else {
	print "Showing $targetdir\n";
}

chdir $targetdir or die "Couldn't change to $targetdir: $!";

@allfiles =  glob "* .*";

foreach ( sort @allfiles ) {
	print " $_\n";
}