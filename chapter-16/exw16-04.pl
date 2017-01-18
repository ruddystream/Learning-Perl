#!/usr/bin/perl

###
# Chapter 16 Workbook Exercise 04
# -------------------------------
# Write a program to print all of the environment variables, in alphabetical 
# order, along with their values. Can you turn this into a CGI program?
#
# To turn this into a CGI Program, see comments.

use strict;
use warnings;
#use CGI qw( :all );
#my $env_list;

#print header(), 
#      start_html( "ENV VARS" ), 
#      h1( "There are the environment variables available" );

foreach ( sort keys %ENV ) {
	print "$_\n";
## instead for CGI:
#$env_list .= "\t" . li( $_ ) . "\n";
}

#print "\n";
#print ul( $env_list );
#print end_html();