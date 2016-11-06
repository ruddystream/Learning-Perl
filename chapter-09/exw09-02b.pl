#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 2
# In Chapter 8, you created some case-insensitive regular expressions, 
# and if you only used the stuff from Learning Perl up to Chapter 8, 
# you had to do a bit of work. Rewrite the regular expressions from 
# Exercise 8.1 and Exercise 8.5 for what you know from this chapter.
#
# usage:
#   exw09-02.pl 
#

use strict;
use warnings;

# Use this script as the input.
my $datafile = "./exw09-02b.pl";
my $DATAFILEHANDLE;

# A hash of valid sigils
my %sigils = ( 
	'$'=>'a scalar', 
	'@'=>'an array', 
	'%'=>'a hash' 
);

# some other test variables names
my $fred = "Flinstone";
my @barney = ( 'betty', 'bam-bam' );
my %betty = (
	'one' => 'thing',
	'two' => 'other-things'
);


if ( ! open $DATAFILEHANDLE, "<", "$datafile" ) {
	print "I couldn't find this script??!?\n";
	exit 1;
} else {
	while (<$DATAFILEHANDLE>) {							# take one input line at a time
		chomp;
		if ( m/
			my\ 							# look for a variable definition.
			(								# start of the variable capture.
				([\$\@\%])					# capture the sigils.
				[a-z_]*					# the actual variable name.
			)								# finish the variable capture.
			/xi 
		) {
			print "  $1 is $sigils{$2}.\n";
		}
	}
}