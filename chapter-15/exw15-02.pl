#!/usr/bin/perl

###
# Chapter 15 Workbook Exercise 02
# -------------------------------
# Modify your answer to Exercise 15.1 to prompt the user to enter several 
# names, one line per name. Report success if at least one of the names is a 
# key in a hash that you define in your program.
#

use strict;
use warnings;

my %hash = qw(
	Fred Flintstone
	Wilma Flintstone
	Barney Rubble
	Betty Rubble
	Larry Slate
	Pebbles Flintstone
	Bamm-Bamm Rubble
);
      
my @names;

print "The elements are [", join( ' ', keys %hash), "]\n";

print "Enter some names, CTRL-D to stop: \n";
chomp ( @names = <STDIN> );

foreach my $name ( @names ) {
	if ( $name ~~ /\A\z/ ) { next; }
	if ( $name ~~ %hash ) {
		print "  $name was in the hash key list.\n";
	} else {
		print "  $name was not in the hash key list.\n";
	}
}