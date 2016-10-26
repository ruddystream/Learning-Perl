#!/usr/bin/perl

###
# Chapter 08 Workbook Exercise 5
# Write a program (not just a regular expression) that can tell the 
# difference between scalar, array, and hash variables, and have it 
# report what it finds.
# 
# usage:
#   exw08-05.pl 
# 
# note:
# - to explicitly match ASCII characters in variable names, use the 'a' modifier.
# - to explicitly match UNICODE characters in variable names, use the 'u' modifier.
#   - according to the answer key, you can also use the UNICODE properties 
#       p{XID_Start}
#       p{XID_Continue}
#     to match the appropriate characters for variable names.

use strict;
use warnings;

# Use this script as the input.
my $datafile = "./exw08-05.pl";
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
				[a-zA-Z_]*					# the actual variable name.
			)								# finish the variable capture.
			/x 
		) {
			print "  $1 is $sigils{$2}.\n";
		}
	}
}