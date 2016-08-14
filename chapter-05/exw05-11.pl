#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 11
# Write a program that prints its command-line arguments to 
#  standard output using a carriage-return/line-feed pair as 
#  the line separator between each argument.
#
# usage:
#   exw05-11.pl hello how are you
#
# output:
#   hello
#   how
#   are
#   you
#

use strict;
use warnings;

# change STDOUT to use CR/LF line endings.
binmode STDOUT, ":crlf";

foreach ( @ARGV ) {
	say STDOUT "$_";
}