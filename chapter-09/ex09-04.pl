#!/usr/bin/perl
#
## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.
#

###
# Chapter 09 Exercise 4
# Write a program to add a copyright line to all of your exercise answers 
# so far, by placing a line like:
#
#     ## Copyright (C) 20XX by Yours Truly
#
# in the file immediately after the “shebang” line.
#
# usage:
#   ex09-04.pl
#

use strict;
use warnings;

$^I = "";

my $copyright = "#\n## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.\n#";
my $pattern = "#!/usr/bin/perl";

while ( <> ) {
	chomp;
	s%\A($pattern)%$pattern\n$copyright%;
	print "$_\n";

}
