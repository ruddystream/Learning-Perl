#!/usr/bin/perl

###
# Chapter 10 Exercise 03
# Modify the program from Exercise 3 in Chapter 6 (the environment lister) 
# to print (undefined value) for environment variables without a value.
#
# usage:
#   exw06-03.pl 
#

use strict;
use warnings;
use 5.010;

$ENV{ZERO}      = 0;
$ENV{EMPTY}     = '';
$ENV{UNDEFINED} = undef;

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
	$value = $ENV{$key} // '(undefined value)';
	printf " %-${maxkeylength}s | %s\n", $key, $value;
}

# closed footer
print "-" x $maxkeylength, "--+-", "-" x $maxvaluelength, "\n";
