#!/usr/bin/perl

###
# Chapter 10 Exercise 01
# ----------------------
# Make a program that will repeatedly ask the user to guess a secret number 
# from 1 to 100 until the user guesses the secret number. Your program 
# should pick the number at random by using the magical formula 
#
#        int(1 + rand 100)
#
# When the user guesses wrong, the program should respond, “Too high” or 
# “Too low.” If the user enters the word quit or exit, or if the user enters 
# a blank line, the program should quit. Of course, if the user guesses 
# correctly, the program should quit then as well!
#
# usage:
#   ex10-01.pl 
#

use strict;
use warnings;

my $secretnumber = int(1 + rand 100);

print "SECRET NUMBER GUESSING GAME\n";
print "---------------------------\n\n";

print " Instructions: \n";
print " I have thought of a whole number between one (1) and one hundred (100).\n";
print " Enter numbers until you guess it!\n\n";

while ( 1 ) {
	print "Enter your guess: ";
	chomp ( my $guess = <> );
	if ( $guess =~ /quit|exit|drop dead|\A\z/ ) {
		print " Thanks for playing!\n";
		last;
	} elsif ( $guess !~ /\d/ ) {
		print " No, you're guessing for numbers.\n";
		next;
	} elsif ( $guess == $secretnumber ) {
		print " *** YOU WIN *** \n";
		last;
	} elsif ( $guess > $secretnumber ) {
		print " Too big.\n";
		next;
	} elsif ( $guess < $secretnumber ) {
		print " Too small.\n";
		next;
	} else {
		print " THAT was a weird guess.\n I should probably ignore it.\n";
	}
}

