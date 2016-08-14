#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 02
# Write a program to read lines from all of the files on the 
# command line and print out each line prefaced with its filename.
#
# usage:
#   exw05-02.pl input1 input2 input3 -
#
# output:
#   input1: asdf
#   input2: cxzv
#   input3: qwer
#   stdin: dfgh
#

use strict;
use warnings;

my $file;
my $output;

foreach $file ( @ARGV ) {

    if ( $file eq "-" ) {
    	print "Now, enter things on stdin. Press CTRL-D to stop:\n";
    	while ( <STDIN> ) {
    		$output .= "stdin: $_" ;
    	}
    	print $output;
    } elsif ( ! open FILETOOUTPUT, "<", "$file" ) {
		print "couldn't open $file!";
	} else {
		while ( <FILETOOUTPUT> ) {
			chomp;
			print "$file: $_\n";
		}

	}
}

