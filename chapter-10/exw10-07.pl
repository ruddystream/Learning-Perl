#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 07
# -------------------------------
# Using redo and a naked block, continually prompt a user to guess a secret 
# number between 1 and 10.
#
# usage:
#   exw10-07.pl 
#

use strict;
use warnings;

my $secretnumber = int(1 + rand 10);

print "SECRET NUMBER GUESSING GAME\n";
print "---------------------------\n\n";

print " Instructions: \n";
print " I have thought of a whole number between one (1) and one 10 (10).\n";
print " Enter numbers until you guess it!\n\n";

BLOOP: {
	print "Enter your guess: ";
	chomp ( my $guess = <> );
	if ( $guess =~ /quit|exit|drop dead|\A\z/ ) {
		print " Thanks for playing!\n";
		last BLOOP;
	} elsif ( $guess !~ /\d/ ) {
		print " No, you're guessing for numbers.\n";
		redo BLOOP;
	} elsif ( $guess == $secretnumber ) {
		print " *** YOU WIN *** \n";
		last BLOOP;
	} elsif ( $guess > $secretnumber ) {
		print " Too big.\n";
		redo BLOOP;
	} elsif ( $guess < $secretnumber ) {
		print " Too small.\n";
		redo BLOOP;
	} else {
		print " THAT was a weird guess.\n I should probably ignore it.\n";
	}
}

