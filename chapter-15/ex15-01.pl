#!/usr/bin/perl

###
# Chapter 15 Exercise 01
# ----------------------
# Rewrite your number guessing program from Exercise 1 in Chapter 10 to use 
# given. How would you handle non-numeric input? You don’t need to use smart 
# matching.
#
# usage:
#   ex15-01.pl 
#

use strict;
use warnings;
use 5.010001;

my $secretnumber = int(1 + rand 100);

print "SECRET NUMBER GUESSING GAME\n";
print "---------------------------\n\n";

print " Instructions: \n";
print " I have thought of a whole number between one (1) and one hundred (100).\n";
print " Enter numbers until you guess it!\n\n";

while ( 1 ) {
	print "Enter your guess: ";
	chomp ( my $guess = <> );

	given( $guess ) {
		when ( /quit|exit|drop dead|\A\z/ ) {
			print " Thanks for playing!\n";
			last;
		} 
	
		when ( ! /\d/ ) {
			print " No, you're guessing for numbers.\n";
			next;
		} 
	
		when ( $secretnumber ) {
			print " *** YOU WIN *** \n";
			last;
		} 
	
		when ( $_ > $secretnumber ) {
			print " Too big.\n";
			next;
		} 
	
		when  ( $_ < $secretnumber ) {
			print " Too small.\n";
			next;
		} 
	
		default {
			print " THAT was a weird guess.\n I should probably ignore it.\n";
		}
	}
}

