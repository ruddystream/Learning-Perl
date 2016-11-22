#!/usr/bin/perl

###
# Chapter 11 Workbook Exercise 05
# -------------------------------
# Use the LWP::Simple module to download and store the HTML source for 
# http://perldoc.perl.org/.
#
# usage:
#   exw11-05.pl 
#

use strict;
use warnings;
use LWP::Simple;

getstore("http://perldoc.perl.org", "exw11-05.html");