#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 06
# -------------------------------
# Modify your answer to Exercise 16.2 to execute the command using open and 
# a pipe. Read the input one line at a time through a filehandle and report 
# the same results.
#

use strict;
use warnings;


open my $homedirs, '-|', 'ls', qw( -l /Users );

my (%users, %groups);

while ( <$homedirs> ) {
	next if ( /\Atotal / );
	my ( undef, undef, $owner, $group ) = split /\s+/;
	
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