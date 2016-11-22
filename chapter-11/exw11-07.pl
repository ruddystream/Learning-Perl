#!/usr/bin/perl

###
# Chapter 11 Workbook Exercise 07
# -------------------------------
# Use the XML::Twig module to process this XML snippet to remove the 
# <bowling_score> element from the snippet of XML data.
#
# usage:
#   exw11-07.pl 
#

use strict;
use warnings;
use XML::Twig;

my $xml = XML::Twig->new();
$xml->parsefile( 'exw11-07.xml' );

my $root = $xml->root;
my @characters = $root->children( 'character' );

foreach my $character ( @characters ) {
	$character->cut_children( 'score' );
}

$xml->print( pretty_print=>'indented' );