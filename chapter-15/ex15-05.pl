#!/usr/bin/perl

###
# Chapter 15 Exercise 05
# ----------------------
# Modify the program from the previous exercise to also report if the number 
# is odd or even, if the number is prime (you find no divisors other than 1 
# and the number itself), and if it is divisible by your favorite number. 
# Again, only use smart matching.
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

	my @computed_divisors  = divisors( $_ );
	my $computed_parity    = $_ % 2;
	my $computed_seventeenable = $_ % 17;

	my @empty_array;

	when ( $computed_parity ~~ 1 ) {
		print "$_ is odd.\n";
		continue;
	}

	when ( $computed_parity ~~ 0 ) {
		print "$_ is even.\n";
		continue;
	}

	when ( $computed_seventeenable ~~ 0 ) {
		print "$_ is seventeenable.\n";
		continue;
	}

	when ( @computed_divisors ~~ @empty_array ) {
		print "$_ is a prime number.\n";
	}

	default { print "$_ is divisible by @computed_divisors.\n"; }
}