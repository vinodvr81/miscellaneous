use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my @fruits  = ('apple','banana','grape');
print (" \n Before Shift \n");
print Dumper(@fruits);
shift(@fruits);
print ("\n after  Shift \n");
print Dumper(@fruits);

unshift @fruits, "Papaya";
print ("\n after  unShift \n");
print Dumper(@fruits);
print("\n". __LINE__ ."\n");

# Interpolation of variable
print("\n");
print("Hello $10");
print("\n");
print('Hello $10');
print("\n");

print "@fruits";
print("\n");

print "$#fruits";

# Perl range operator

my @array1 = (1..10);

print("\n");
print(@array1);

print("\n");

print($array1[0]);

}

main();