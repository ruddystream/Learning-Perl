#!/usr/bin/perl

use warnings;

# This will produce the warning
#   Use of uninitialized value $_ in print
print;

# This will produce the warning 
#   Useless use of a constant in void context
3 + 4;

# This will produce the warnings
#   Use of uninitialized value $n in addition (+)
#   Name "main::n" used only once: possible typo
print $n + 1;

print( "\n" );
