#!/usr/bin/perl

###
# Chapter 16 Exercise 01
# ----------------------
# Write a program that changes to some particular (hardcoded) directory, like 
# the system’s root directory, then executes the ls -l command to get a 
# long-format directory listing in that directory.
#

use strict;
use warnings;

my $directory = "/";

chdir $directory or die "Can't chdir to $directory: $!\n";
exec 'ls', '-l', $directory or die "Can't exec ls: $!\n";