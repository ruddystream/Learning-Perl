#!/usr/bin/perl

###
# Chapter 06 Exercise 03
# Write a program to list all of the keys and values in %ENV.
#
# NOTE: the output will look much better in a wide terminal window.
#
# usage:
#   exw06-03.pl 
#
# output:
#  ENVIRONMENT VARIABLES
# ------+------------------------------
#  KEY  | VALUE
# ------+------------------------------
#  PATH | /bin;/usr/bin;/usr/local/bin
#  ...
# ------+------------------------------
#

use strict;
use warnings;

my ($key, $value, $maxkey, $maxvalue);
my $maxkeylength = 0;
my $maxvaluelength = 0;

foreach $key ( keys %ENV ) {
	if ( length($key) > $maxkeylength ) {
		$maxkeylength = length($key);
	}

	if ( length $ENV{$key} > $maxvaluelength ) {
		$maxvaluelength = length($ENV{$key});
	}
}

# pretty header
print "\n ENVIRONMENT VARIABLES:\n";
print "-" x $maxkeylength, "--+-", "-" x $maxvaluelength, "\n";
printf " %-${maxkeylength}s | %s\n", "KEY", "VALUE";
print "-" x $maxkeylength, "--+-", "-" x $maxvaluelength, "\n";

# sorted table
foreach $key ( sort keys %ENV ) {
	$value = $ENV{$key};
	printf " %-${maxkeylength}s | %s\n", $key, $value;
}

# closed footer
print "-" x $maxkeylength, "--+-", "-" x $maxvaluelength, "\n";
