#!/usr/bin/perl

###
# Chapter 13 Exercise 01
# ----------------------
# Write a program to ask the user for a directory name, then change to 
# that directory. If the user enters a line with nothing but whitespace, 
# change to his or her home directory as a default. After changing, list 
# the ordinary directory contents (not the items whose names begin with a 
# dot) in alphabetical order.
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

@allfiles =  glob "*";

foreach ( @allfiles ) {
	print " $_\n";
}