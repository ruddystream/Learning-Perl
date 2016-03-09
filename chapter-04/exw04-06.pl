#!/usr/bin/perl

use 5.010;

# my answer
sub make_into_prose {
	my @words = @_;
	my $total = $#_ + 1;
	my $prose = "";

	if ( @_ == 0 ) {
		$prose = "Music to hear, why hear'st thou music sadly?";
	} else {
		foreach my $index ( 0 .. $total ) {
			if ( $total - $index == 0 ) {
				$prose .= ".";
			} elsif ( $total - $index == 1 ) {
				$prose .= @words[ $index ];
			} elsif ( $total - $index == 2 ) {
				$prose .= @words[ $index ] . ", and ";
			} else {
				$prose .= $words[ $index ] . ", ";
			}
		}
	}
	
	return $prose;
}

# the book's answer
sub separate {
	if (    @_ == 1 ) { return "@_."; }
	elsif ( @_ == 2 ) { return "$_[0] and $_[1]." }
	elsif ( @_ > 2 ) { 
		my $last = pop; 	 	 # grab the last entry in the list.
		local $" = ", ";		 # set the list separator, local to this block.
		return "@_, and $last."; # append the last popped value to the list, with the custom separator.
	}
}

my @nowords = ();
my @oneword = qw( BULLS );
my @twowords = qw( WEING MEANIS );
my @lotsawords = qw( DAGNATCH STION WHOCKS BULLSHORE BULVA VAGNATCH BAST );

print( make_into_prose( @nowords ) . "\n" );
print( make_into_prose( @oneword ) . "\n" );
print( make_into_prose( @twowords ) . "\n" );
print( make_into_prose( @lotsawords ) . "\n" );

print( separate( @nowords ) . "\n" );
print( separate( @oneword ) . "\n" );
print( separate( @twowords ) . "\n" );
print( separate( @lotsawords ) . "\n" );
