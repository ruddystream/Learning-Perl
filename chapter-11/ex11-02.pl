#!/usr/bin/perl

###
# Chapter 11 Exercise 02
# ----------------------
# Write a program using DateTime to compute the interval between now and a 
# date that you enter as the year, month, and day on the command line.
#
# usage:
#   ex11-02.pl 
#

use strict;
use warnings;
use DateTime;

my $duration;
my @units;

defined $ARGV[0] ? my $origin_year  = $ARGV[0] : die "Need a year\n";
defined $ARGV[1] ? my $origin_month = $ARGV[1] : die "Need a month\n";
defined $ARGV[2] ? my $origin_day   = $ARGV[2] : die "Need a day\n";

my $origin_date = DateTime->new (
	year	=> $origin_year,
	month	=> $origin_month,
	day		=> $origin_day,
);

my $current_date = DateTime->from_epoch( epoch => time );


if ( $current_date < $origin_date ) {
	$duration = $origin_date - $current_date;
	@units = $duration->in_units( qw( years months days ) );
	
	printf "It will be %d years, %d months, and %d days until %s, %s %d, %d\n", 
		@units,
		$origin_date->day_name,
		$origin_date->month_name,
		$origin_date->day,
		$origin_date->year;
} else {
	$duration = $current_date - $origin_date;
	@units = $duration->in_units( qw( years months days ) );

	printf "It has been %d years, %d months, and %d days since %s, %s %d, %d\n", 
		@units,
		$origin_date->day_name,
		$origin_date->month_name,
		$origin_date->day,
		$origin_date->year;
}

