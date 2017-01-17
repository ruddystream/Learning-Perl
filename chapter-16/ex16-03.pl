#!/usr/bin/perl

###
# Chapter 16 Exercise 03
# ----------------------
# Write a program to parse the output of the date command to determine the 
# current day of the week. If the day of the week is a weekday, print get 
# to work; otherwise, print go play.
#

use strict;
no warnings;
use 5.018;

my @date = `date`;

# Probably a weekday: 
#my @date = `date -j -f "%s" "1484613851"`;
# Probably a weekend day:
# my @date = `date -j -f "%s" "1484442051"`;

given ( $date[0] ) {
	when ( /Sat|Sun/ ) {
		print "Go play.\n";
	}
	default {
		print "Get to work.\n";
	}

}