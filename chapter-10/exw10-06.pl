#!/usr/bin/perl

###
# Chapter 10 Workbook Exercise 06
# -------------------------------
# Perl has a special token, __END__, which marks the end of a program when 
# it shows up on a line by itself. Modify your answer to Exercise 10.5 so 
# that you stop reading lines when you encounter that token.
#
# usage:
#   exw10-06.pl 
#

use strict;
use warnings;
use 5.010;

# Use this script as the input.
my $datafile;
my $DATAFILEHANDLE;
my $linecount = 0;

print "I WILL COUNT THE LINES OF CODE IN YOUR PERL PROGRAM\n\n";
print "  ENTER A SCRIPT NAME: ";
chomp( $datafile = <STDIN> );

if ( ! open $DATAFILEHANDLE, "<", "./$datafile" ) {
	die "I couldn't find $datafile.\n";
} else {
#	print "  ";
	while ( <$DATAFILEHANDLE> ) {
		print "$linecount: $_";
		chomp;
		next if ( m/\A\s*#/ );
		next if ( m/\A\z/ );
		$linecount += 1;
		last if ( m/\A__END__\z/);

	}
}

print "\n  COUNT IS COMPLETE\n";
print "  $linecount CODE LINES FOUND\n"

__END__
Don't count this line, please.