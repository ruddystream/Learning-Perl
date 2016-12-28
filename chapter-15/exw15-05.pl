#!/usr/bin/perl

###
# Chapter 15 Workbook Exercise 05
# -------------------------------
# Use given-when and smart matching to implement a word guessing game. If the 
# user enters a string that exactly matches the secret word, report success. 
# If the string doesn’t match, try that string as a regular expression pattern. 
# If the user enters give up, stop the program.
#

use strict;
no warnings;
use 5.010001;

sub get_random_word {
	my $word = "Latticework"; # guaranteed picked randomly.

	return $word;
}

my $random_word = get_random_word();

print "Guessing game!\n--------------\nI've picked a random word. Make guesses, and I'll tell you if you're\ngetting close!\n\n";

GAME: while ( 1 ) {
	print "Enter a string or pattern> ";
	chomp ( my $guess = <STDIN> );

	given ( $guess ) {
		when ( /I?\s*give\s*up/ ) {
			print " Aww, too bad.\n\n The secret word was \"$random_word\"\n\n";
	 		last GAME;
		}
		when ( $random_word ) {
			print " Congrats, you got it!\n\n";
			last GAME;
		}
		when ( $random_word ~~ /$guess/ ) {
			print "The secred word matches the pattern [$guess].\n\n";
		}
		default {
			print " [$guess] didn't help at all.\n\n";
		}
	}
}