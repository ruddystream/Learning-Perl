#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 02
# -------------------------------
# Use the backticks operator to read the output of ls –l command then report 
# which users and groups it finds. Run it in the directory that contains the 
# user home directories.
#

use strict;
use warnings;

my @homedirs = `ls -l /Users`;
my (%users, %groups);

foreach my $dir ( @homedirs ) {
	next if ( $dir =~ /\Atotal / );
	my ( undef, undef, $owner, $group ) = split /\s+/, $dir;
	
	if ( defined( $owner ) ) {
		$users{$owner} = 1;
	}

	if ( defined( $group ) ) {
		$groups{$group} = 1;
	}
}

print "Users found: \n";
foreach ( sort keys %users ) { print "  $_\n"; }

print "Groups found: \n";
foreach ( sort keys %groups ) { print "  $_\n" ; } 
