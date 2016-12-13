#!/usr/bin/perl

###
# Chapter 13 Exercise 05
# ----------------------
# Write a program that works like mv, renaming the first command-line 
# argument to the second command-line argument.
#

use strict;
use warnings;
use 5.010;
use File::Basename;
use File::Spec;

unless ( @ARGV == 2 ) {
	die "Please specify the source and target files, and only those.\n" 
}

my ($source, $target, $basename);

$source = $ARGV[0];

if ( -d $ARGV[1] ){
	$basename = basename $source;
	$target = File::Spec->catfile($ARGV[1], $basename)
} else {
	$target = $ARGV[1];
}

rename $source, $target or warn "Couldn't move $source to $target: $!";
