#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 04a
# --------------------------------
# Write a program to print a list of the files in the current directory, 
# sorted in order of their ascending file size. 
#

use strict;
use warnings;

my @all_files;
my %files_sizes;
my @sorted_by_size;

sub by_size {
	$files_sizes{$a} <=> $files_sizes{$b};
}

@all_files = glob "* .*";

foreach my $file ( @all_files ) {
	next if ( $file =~ /\A\.\.?\z/ );
	my $size = -s $file;	
	$files_sizes{ $file } = $size;
}

@sorted_by_size = sort by_size keys %files_sizes;

printf "%15s	   %s\n", "File", "Size";
printf "---------------    ----\n";

foreach ( @sorted_by_size ) {
	printf "%15s    %i b\n", "$_", $files_sizes{$_};
}
