#!/usr/bin/perl -w

use strict;
use warnings;

$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my @fields = split(/:/, "1:2:3:4:vinod");
print "Field values are: @fields\n";

my $field = \@fields;

print(ref($field));

}

main();