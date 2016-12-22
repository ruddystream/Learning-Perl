#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 04b
# --------------------------------
# Change the program to make it list the files in order of descending 
# file size.
#

use strict;
use warnings;

my @all_files;
my %files_sizes;
my @sorted_by_size;

sub by_size {
	$files_sizes{$b} <=> $files_sizes{$a};
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
