#!/usr/bin/perl

###
# Chapter 11 Workbook Exercise 02
# -------------------------------
# Write a program to take a list of file paths and break them into filename 
# and path portions using the File::Basename module. 
#
# usage:
#   exw11-02.pl 
#

use strict;
use warnings;

use File::Basename;

my $format = "%-35s | %-25s\n";

printf $format, "directory", "filename";

foreach ( @ARGV ) {

	chomp;
	printf $format, dirname($_), basename($_);

}

