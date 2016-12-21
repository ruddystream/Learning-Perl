#!/usr/bin/perl

###
# Chapter 14 Workbook Exercise 05
# -------------------------------
# Write a program to print a list of the files in the current directory, 
# sorted in order of their last modification line. Put the most recently 
# modified file at the beginning of the list.
#

use strict;
use warnings;

my @all_files;
my %files_mtimes;
my @sorted_by_mtime;

sub by_mtime {
	$files_mtimes{$b} <=> $files_mtimes{$a};
}

@all_files = glob "* .*";

foreach my $file ( @all_files ) {
	next if ( $file =~ /\A\.\.?\z/ );
	my $mtime = scalar ( (stat($file))[9] );
	$files_mtimes{ $file } = $mtime;
}

@sorted_by_mtime = sort by_mtime keys %files_mtimes;

printf "%15s	   %s\n", "File", "Modified Time";
printf "---------------    -------------\n";

foreach ( @sorted_by_mtime ) {
	printf "%15s    %s\n", "$_", scalar localtime ($files_mtimes{$_});
}
