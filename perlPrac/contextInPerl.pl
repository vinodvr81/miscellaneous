use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my $a = (4,5,6);

print("\n");
print($a);

my @b = (1,2,3);

my $c = @b;

print("\n");
print($c);

my 
($x,$y,$z) = ("Vinod","Lakshmi","Nevaan");

print("\n");
print($x);

print("\n");
print($y);

print("\n");
print($z);
print("\n");
print 4 +(25,100);

my @h = (25,100);
print("\n");
print 4+@h;

}

main();