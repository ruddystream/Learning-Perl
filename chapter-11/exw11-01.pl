#!/usr/bin/perl

###
# Chapter 11 Workbook Exercise 01
# -------------------------------
# Using the File::Spec module, write a program that takes a directory path 
# from the command line and adds it to every file in the current working 
# directory to create an absolute path.
#
# usage:
#   exw11-01.pl 
#

use strict;
use warnings;

use File::Spec;

defined $ARGV[0] ? my $path  = $ARGV[0] : die "Need a path.\n";
my $directory = "/etc/";
my $DIRHANDLE;
my @dirlist;

opendir( $DIRHANDLE, $directory) or die "Couldn't open $directory: $!";
@dirlist = readdir( $DIRHANDLE );
closedir( $DIRHANDLE );

foreach my $direntry ( @dirlist ) {
	my $newdirentry = File::Spec->catfile( $path, $direntry );
	print " $newdirentry\n";
}