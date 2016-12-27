#!/usr/bin/perl

###
# Chapter 15 Exercise 04
# ----------------------
# Using given and smart matching, write a program that reports all the 
# divisors (except 1 and the number itself) of a number you specify on the 
# command line.
#

use strict;
no warnings;
use 5.018;

sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }

    return @divisors;
}

given ( $ARGV[0] ) {
	when ( ! /\A\d+\z/ ) {
		print "THAT is NOT a digit.\n";
	}

	my @computed_divisors = divisors( $_ );
	my @empty_array;

	when ( @computed_divisors ~~ @empty_array ) {
		print "$_ is a prime number.\n";
	}

	default { print "$_ is divisible by @computed_divisors.\n"; }
}