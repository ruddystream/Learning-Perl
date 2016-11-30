#!/usr/bin/perl

###
# Chapter 12 Workbook Exercise 01
# -------------------------------
# Go through all the files on the command line and list them in the output. 
# Put a / after the names of directories, an * after executables, and an @ 
# after symbolic links.
#

use strict;
use warnings;
use 5.010;

die "Please enter a file name on the command line.\n" unless @ARGV;

sub check_file {
	my $f = shift;
	if ( ! -e $f ) {
		return "Does Not Exist";
	}

	if ( -d $f ) {
		return "/";
	}

	if ( -x $f ) {
		return "*";
	}

	if ( -l $f ) {
		return "@";
	}

	return "";
}

foreach my $file ( @ARGV ) {
	say "$file" . check_file($file);
}