#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 7b
# -------------------------------
# Modify the program to set the modification time of the files to the current 
# system time.
#

use strict;
use warnings;
use 5.010;
use DateTime;

my $now = time;
my $format = "%-25s   %25s\n";

printf "\nCurrent date: %s\n\n", scalar localtime( $now );

printf $format, "filename", "modified date";
printf $format, "--------", "-------------";

foreach ( glob "foo/*" ) {
	utime $now, localtime( ( stat($_))[9]), $_ or warn "Couldn't set access time: $!" ;
	printf $format, $_, scalar localtime( ( stat($_))[8] );
}