#!/usr/bin/perl

###
# Chapter 09 Exercise 5
# Modify the previous program so that it doesn’t edit the files that already 
# contain the copyright line.
#
# usage:
#   ex09-05.pl
#

use strict;
use warnings;


my $copyright = "## I, Ruddy Stream, commit this code to the public domain, and claim no copyright on it.";
my $pattern = "#!/usr/bin/perl";
my %fileslist;

foreach ( @ARGV ) {
	$fileslist{$_} = 1;
}


# first pass: find files without the notice.
while ( <> ) {
	chomp;
	if ( /\A$copyright/ ) {
		delete $fileslist{$ARGV};
	}
}

@ARGV = sort keys %fileslist;

$^I = ".bak";

# second pass: change only files without the notice.
while ( <> ) {
	chomp;
	s%\A($pattern)%$pattern\n$copyright%;
	print "$_\n";

}
