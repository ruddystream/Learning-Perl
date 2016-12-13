#!/usr/bin/perl

###
# Chapter 13 Exercise 07
# ----------------------
# If your operating system supports it, fix up the program from the previous 
# exercise to allow an optional -s switch before the other arguments to 
# indicate that you want to make a soft link instead of a hard link.
#

use strict;
use warnings;
use 5.010;
use File::Basename;
use File::Spec;
use Getopt::Std;

our $opt_s;
getopts('s');

my ( $source, $target, $basename );

$source = $ARGV[0];

if ( -d $ARGV[1] ){
	$basename = basename $source;
	$target = File::Spec->catfile($ARGV[1], $basename)
} else {
	$target = $ARGV[1];
}
if ( defined $opt_s ) {
	symlink $source, $target or warn "Couldn't symlink $source to $target: $!";
} else {
	link $source, $target or warn "Couldn't link $source to $target: $!";
}
