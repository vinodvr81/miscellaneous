use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my @fruits  = ('apple','banana','grape');

my @otherfuits;

push @otherfuits, @fruits;

print Dumper(@otherfuits);

print "\n";

print "After removing an element from fruits array \n";

pop @fruits;

print Dumper(@fruits);

}

main();