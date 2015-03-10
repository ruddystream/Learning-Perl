#!/usr/bin/perl

use warnings;

my @lcl = ( 'a'..'z' );
my @ucl = ( 'A'..'Z' );
my @al  = ( 'a'..'z', 'A'..'Z' );
my $i = 0;

print( "YOU LIKE LETTERS? HERE'S LETTERS!\n" );

print( "LOWER CASE LETTERS!\n" );
foreach ( @lcl ) {
	print( "  $_" );
}

print( "\n\nUPPER CASE LETTERS!\n" );
foreach( @ucl ) {
	print( "  $_" );
}

print( "\n\nALLLLLL THE LETTERS!\n" );
foreach( @al ) {
	print( "  $_" );
	if ( $i < 25 ) { 
		$i++;
	} else {
		print( "\n" );
		$i = 0;
	}
}

print( "\nSOME OTHER STUFF!!\n" );
$i = 0;
foreach ( 'a1'..'z1' ) {
	print( "  $_" );
	if ( $i < 15 ) { 
		$i++;
	} else {
		print( "\n" );
		$i = 0;
	}
}
print( "\n-=-=-=-=-=-=-=-=-=-=-=-=-\n" );
$i = 0;
foreach( 'a10'..'b10' ) {
	print( "  $_" );
	if ( $i < 15 ) { 
		$i++;
	} else {
		print( "\n" );
		$i = 0;
	}
}
print( "\n-=-=-=-=-=-=-=-=-=-=-=-=-\n" );
$i = 0;
foreach( 'a1'..'b10' ) {
	print( "  $_" );
	if ( $i < 15 ) { 
		$i++;
	} else {
		print( "\n" );
		$i = 0;
	}
}

print( "\n" );
