#!/usr/bin/perl

###
# Chapter 13 Exercise 06
# ----------------------
# If your operating system supports it, write a program that works like ln, 
# making a hard link from the first command-line argument to the second.
#

use strict;
use warnings;
use 5.010;
use File::Basename;
use File::Spec;

unless ( @ARGV == 2 ) {
	die "Please specify the source file and target link, and only those.\n" 
}

my ($source, $target, $basename);

$source = $ARGV[0];

if ( -d $ARGV[1] ){
	$basename = basename $source;
	$target = File::Spec->catfile($ARGV[1], $basename)
} else {
	$target = $ARGV[1];
}

link $source, $target or warn "Couldn't link $source to $target: $!";
