#!/usr/bin/perl

use strict;
use warnings;

$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my $string = join( "-", "one", "two", "three" );
print"Joined String is $string\n";

print("Split function is \n ");
print("\n");
print split(m/-/, $string);
print("\n");


my $string1 = join( "----", "one", "two", "three" );
print"Joined String is $string1\n";

print("\n");
print("After Split function is \n ");
my $string2 = split(m/-.*/, $string1);
print($string2);
print("\n");
}

main();