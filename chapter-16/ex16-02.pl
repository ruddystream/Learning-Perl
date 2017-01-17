#!/usr/bin/perl

###
# Chapter 16 Exercise 02
# ----------------------
# Modify the previous program to send the output of the command to a file 
# called ls.out in the current directory. The error output should go to a file 
# called ls.err.
#

use strict;
use warnings;

my $directory = "/";

open STDOUT, '>', 'ls.out' or die "Can't open ls.out: $!\n";
open STDERR, '>', 'ls.err' or die "Can't open ls.err: $!\n";

chdir $directory or die "Can't chdir to $directory: $!\n";
exec 'ls', '-l', $directory or die "Can't exec ls: $!\n";