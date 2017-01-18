#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 03
# -------------------------------
# Rewrite the program from the previous exercise, but use 
# IPC::System::Simple instead of backticks.
#

use strict;
use warnings;
use IPC::System::Simple qw( capturex );

my @homedirs = capturex( "ls", "-l", "/Users" );
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
