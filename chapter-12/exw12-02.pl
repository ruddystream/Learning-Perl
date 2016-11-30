#!/usr/bin/perl

###
# Chapter 12 Workbook Exercise 02
# -------------------------------
# Using the stat function, go through all of the files on the command line 
# and list the modification time of each file.
#

use strict;
use warnings;
use 5.010;
use DateTime;

die "Please enter a file name on the command line.\n" unless @ARGV;

sub check_file {
	my $f = shift;
	return scalar localtime( (stat($f))[9] );
}

my $format = "%-35s   %25s\n";
printf $format, "filename", "modified date";
printf $format, "--------", "-------------";
foreach my $file ( @ARGV ) {
	printf $format, $file, check_file($file);
}