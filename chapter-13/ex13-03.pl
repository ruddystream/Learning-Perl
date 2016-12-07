#!/usr/bin/perl

###
# Chapter 13 Exercise 03
# ----------------------
# If you used a glob for the previous exercise, rewrite it using a directory
# handle.
#

use strict;
use warnings;
use 5.010;

my ($targetdir, $dh);
my @allfiles;

print "Hello, enter a directory, or nothing for your homedir: ";
chomp ( $targetdir = <STDIN> );

if ( $targetdir =~ /\A\p{SPACE}*\z/ ) {
	$targetdir = $ENV{HOME};
} 

print "Showing $targetdir\n";

chdir $targetdir or die "Couldn't chdir to $targetdir: $!";
opendir $dh, '.' or die "Couldn't open $targetdir: $!";

foreach ( sort readdir $dh ) {
	print " $_\n";
}