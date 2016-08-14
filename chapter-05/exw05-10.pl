#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 10
# Write a program that prompts the user for a message then appends 
# the message to a log file. Add a timestamp to each entry.
#
# usage:
#   exw05-10.pl "Hello, world!"
#
# output:
#   [Sun Aug 14 12:36:45 CDT 2016] Hello, world!
#

use strict;
use warnings;

my $message;
my $logfile = "exw05-10.log";
my $timestamp;

if ( ! open FILE, '>>', $logfile ) {
	die "Couldn't open logfile $logfile. $!";
}

print "Enter a log message: ";
$message = <STDIN>;
$timestamp = localtime;

print FILE "[$timestamp] $message\n";

close FILE;