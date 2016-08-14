#!/usr/bin/perl

###
# Chapter 05 Workbook Exercise 03
# Explain the output of this program then fix the bug. 
# 
# ANSWER:
# The bug is in the return of 'format_number'. Since there is no return 
# in the subroutine, it returns the return value of the last expression, 
# i.e. the print. Since it was successful, the return value is 1. 
#
# There are two ways to fix the function. 
# 1) change the print to return in the subroutine.
# 2) don't print the return of format_number in the main program.
#
# I've chosen option 1.
#
# /rs.

use strict;
use warnings;

print format_number( 9999 ), "\n";

sub format_number { 
	local $_ = shift;

	1 while s/^([-+]?\d+)(\d{3})/$1,$2/;

	# print $_;
	return $_; 
}