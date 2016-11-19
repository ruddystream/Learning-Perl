#!/usr/bin/perl

###
# Chapter 11 Exercise XX
# ----------------------
# Print a list of all of the modules that came with Perl 5.14.
#
# usage:
#   ex11-01.pl 
#

use strict;
use warnings;
use Module::Corelist;
use 5.014;

my %modules = %{ $Module::CoreList::version{5.014} };

#sort keys %modules;
print join "\n", sort keys %modules;
