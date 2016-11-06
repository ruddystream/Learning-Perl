#!/usr/bin/perl

###
# Chapter 09 Workbook Exercise 1
# Without escaping characters, write regular expressions that match these 
# string descriptions.
#
#   1. The Unix path name /usr/bin/perl.
#   2. A web address that has a named anchor fragment in it, such as 
#      http://www.example.com/index.html#fragment.
#   3. A single line C++ comment. That’s a // until the end of the line.
#
# usage:
#   exw09-01.pl 
#

use strict;
use warnings;


while (<>) {                   # take one input line at a time
    chomp;
    if ( m%http://.*/.*#% ) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
    } else {
        print "No match: |$_|\n";
    }
}