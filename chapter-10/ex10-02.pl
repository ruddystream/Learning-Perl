#!/usr/bin/perl

###
# Chapter 10 Exercise 02
# ----------------------
# Modify the program from the previous exercise to print extra debugging 
# information as it goes along, such as the secret number it chose.
#
# usage:
#   ex10-01.pl [debug]
#

use strict;
use warnings;
use 5.010;

my $secretnumber = int(1 + rand 100);

# Check if the word 'debug' is passed as the first argument, 
# to turn on debug mode.
my $debug = $ARGV[0] if ( defined $ARGV[0] && $ARGV[0] =~ m/debug/i ) // 0;

print "** DEBUG IS ON.\n" if $debug;
print "** SECRET NUMBER IS $secretnumber\n" if $debug;

print "\nSECRET NUMBER GUESSING GAME\n";
print "---------------------------\n\n";

print " Instructions: \n";
print " I have thought of a whole number between one (1) and one hundred (100).\n";
print " Enter numbers until you guess it!\n\n";

while ( 1 ) {
	print "Enter your guess: ";
	chomp ( my $guess = <STDIN> );
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

