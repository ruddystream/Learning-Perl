#!/usr/bin/perl

###
# Chapter 13 Workbook Exercise 7a
# -------------------------------
# Use the utime function to set the access time of the files on the command 
# line to five minutes ago.
#

use strict;
use warnings;
use 5.010;
use DateTime;

my $now = time;
my $then = $now - 300;
my $format = "%-25s   %25s\n";

printf "\nCurrent date: %s\n\n", scalar localtime( $now );

printf $format, "filename", "modified date";
printf $format, "--------", "-------------";

foreach ( glob "foo/*" ) {
	utime $then, localtime( ( stat($_))[9]), $_ or warn "Couldn't set access time: $!" ;
	printf $format, $_, scalar localtime( ( stat($_))[8] );
}