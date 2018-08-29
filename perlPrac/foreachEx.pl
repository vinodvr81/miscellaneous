use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my @a = (1..10);

foreach my $x(@a){
print("\n");
print($x);
}


my %b =@a;

print("\n");
print("Only Keys");
foreach my $y(keys %b){
print("\n");
print($y);
}

print("\n");
print("Only values");
foreach my $z(values %b){
print("\n");
print($z);
}

}

main();