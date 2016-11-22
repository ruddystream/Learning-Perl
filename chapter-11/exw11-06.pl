#!/usr/bin/perl

###
# Chapter 11 Workbook Exercise 06
# -------------------------------
# Use the DBI module with the DBD::SQLite driver to create a small test 
# database for SQLite. From your Perl program, create a table named 
# “Characters” with columns for ID, First Name, and Last Name. Once you 
# create the table, insert the names of the Flintstones characters 
#
# usage:
#   exw11-06.pl 
#

use strict;
use warnings;
use DBI;

my $database_name = "./exw11-06.sqlite3";
my $dbh = DBI->connect( "dbi:SQLite:dbname=$database_name", "", "" );
my $sth;

my $table_sql = "CREATE TABLE IF NOT EXISTS characters (
					id integer PRIMARY KEY AUTOINCREMENT, 
					first_name text NOT NULL, 
					last_name test NOT NULL
				 );";


my %characters = qw(
	fred flintstone
	wilma flintstone
	betty rubble
	barny rubble
	pebbles flintstone
	bamm-bamm rubble
	joe rockhead
	dino dinosaur
	mister slate
	pearl slaghoople
	tex hardrock
	sam slagheap
	great gazoo
);

$sth = $dbh->prepare( $table_sql );
$sth->execute();

$sth = $dbh->prepare( "INSERT INTO characters ( first_name, last_name ) VALUES ( ?, ? );" );

foreach my $first_name ( keys %characters ) {
	$sth->execute( $first_name, $characters{$first_name} );
}

$dbh->disconnect;