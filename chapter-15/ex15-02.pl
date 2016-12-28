#!/usr/bin/perl

###
# Chapter 15 Exercise 02
# ----------------------
# Write a program using given-when that takes a number as its input, then 
# prints “Fizz” if it is divisible by 3, “Bin” if it is divisible by 5, 
# and “Sausage” if it is divisible by 7. For a number like 15, it should 
# print “Fizz” and “Bin” since 15 is divisible by both 3 and 5. What’s the 
# first number for which your program prints “Fizz Bin Sausage”?
#

use strict;
use warnings;
use 5.018;

print "\nWelcome to Fizz! Bin! Sausage!\n\n";
print "Give me a number. I'll go through all numbers in sequence up \nto it, and if it's:\n";
print "  - divisible by 3, I'll say Fizz\n";
print "  - divisible by 5, I'll say Bin\n"; 
print "  - divisible by 7, I'll say Sausage\n";

print "Give it a try! ";
chomp ( my $number = <STDIN> );
if ( $number =~ /quit|exit|drop dead|\A\z/ ) {
	print " Thanks for playing!\n";
	last;
} 
for ( 1 .. $number) {
	given ( $_ ) {
		print "$_: ";
		when ( $_%3 == 0 ) {
			print "Fizz! ";
			continue;
		}	
		when ( $_%5 == 0 ) {
			print "Bin! ";
			continue;
		}	
		when ( $_%7 == 0 ) {
			print "Sausage!";
		}
	}
	print "\n";
}
