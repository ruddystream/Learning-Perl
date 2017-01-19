#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 01
# -------------------------------
# Write a program that changes the time zone by using the TZ environment 
# variable then uses exec to run the date command. Get the valid time zones 
# from your system.
#

use strict;
use warnings;

$ENV{TZ} = "Universal";
exec 'date';