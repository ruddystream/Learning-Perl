#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 05
# -------------------------------
# Modify your program from Exercise 16.1 to remove the value from PATH 
# environment variable. What other changes do you have to make as a 
# result? 
#

use strict;
use warnings;

$ENV{PATH} = undef;
$ENV{TZ} = "Universal";
exec '/bin/date';