#!/usr/bin/perl

use 5.010;

sub add {
	my $sum = 0;
	foreach ( @_ ) {
		$sum += $_;
	}
	return $sum;
}

sub multiply {
	my $product = 1;
	foreach ( @_ ) {
		$product *= $_;
	}
	return $product;

}
sub ops {
	my $op = shift;
	if ( $op eq "+" ) { 
		return add( @_ );
	} elsif ( $op eq "*" ) {
		return multiply( @_ );
	} else {
		return "You have betrayed my trust.";
	}
	my @nums = @_;
	my $total = 0;

	foreach ( @nums ) {
		if ( $op eq "+" ) {
			$total += $_;
		}
		if ( $op eq "*" ) {
			$total = $total * $_;

		}
	}

	return $total;
}

my $op;
my @nums;

print( "Enter an operation (+ or *): " );
chomp( $op = <STDIN> );

print( "I'm trusting that you gave me an actual operation.\n" );

print( "Now, give me numbers, one per line (press CTRL-D to submit):\n " );
chomp( @nums = <STDIN> );

print( "Again, TRUST." );

print( "So, here's your thing, assuming I could trust you:\n\t " );
print ( ops( $op, @nums ) . "\n" );

