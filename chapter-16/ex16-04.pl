#!/usr/bin/perl

###
# Chapter 16 Exercise 04
# ----------------------
# Write an infinite loop program that catches signals and reports which 
# signal it caught and how many times it has seen that signal before. Exit 
# if you catch the INT signal.
#

use strict;
use warnings;
use 5.018;

my @zero_list;
my $zero_text = "";

my %signal_counts = qw (
	INT 0 VTALRM 0 PROF 0 IO 0 WINCH 0 CONT 0 SYS 0 CHLD 0 ABRT 0 URG 0 INFO 0 
	TRAP 0 QUIT 0 TSTP 0 XFSZ 0 TTIN 0 STOP 0 EMT 0 TERM 0 XCPU 0 ALRM 0 
	SEGV 0 BUS 0 PIPE 0 ILL 0 HUP 0 USR1 0 FPE 0 USR2 0 TTOU 0 
);

my @signal_names = qw (
	INT VTALRM PROF IO WINCH CONT SYS CHLD ABRT URG INFO TRAP QUIT TSTP XFSZ TTIN
	STOP EMT TERM XCPU ALRM SEGV BUS PIPE ILL HUP USR1 FPE USR2 TTOU
);

sub signal_counter { 
	my $signal = pop @_;
	my $count = $signal_counts{$signal} + 1;
	$signal_counts{$signal} = $count;
	
	if ( $signal eq "INT" ) {
		print "\nSaw signal : INT. Let's wrap this up... \n\n"; 
	
		# We're exiting, let's present some stats.
		print " SIGNAL     COUNT\n";
		print " ------     -----\n";
	
		foreach my $sig ( keys %signal_counts) {
			if ( $signal_counts{$sig} > 0 ) {
				printf " %-6s    %5i\n", $sig, $signal_counts{$sig}
			} else {
				push @zero_list, $sig;
			}
		} 
	
		print "\n";
	
		if ( $#zero_list > 1 ) {
			my $zero_count = 0;
			foreach my $zero_sig ( @zero_list ) {
				if ( $zero_count == 0 ) {
					$zero_text = " $zero_sig";
				} elsif ( $zero_count < $#zero_list ) {
	
					$zero_text .= ", $zero_sig";
				} else {
					$zero_text .= ", and $zero_sig";
				}
				$zero_count += 1;
			}
			$zero_text .= " were all at count 0.\n\n";
		} elsif ( $#zero_list == 1 ) {
			$zero_text .= "$zero_list[0] was at count 0.\n\n";
		}
		print $zero_text;
		exit;
	} else {
		print "Saw signal : $signal. Count: $count \n"; 
	}
}

# Assign signal_counter to each signal callback...
foreach my $sig ( @signal_names ) {
	$SIG{$sig} = 'signal_counter';
}

while ( 1 ) {
	# just wait around for signals...
}

# seriously, that was it.
