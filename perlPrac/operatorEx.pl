use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

my $a = 1;
print(" a variable value is:\n");
print($a);
print("\n");

my $b = 1+2;
print("b variable value is: \n");
print($b);
print("\n");


my $c = 5-1;
print("c variable value is: \n");
print($c);
print("\n");

my $d = 5*2;
print("d variable value is: \n");
print($d);
print("\n");

my $e = 5**2;
print("e variable value is: \n");
print($e);
print("\n");

my $f = 12/2;
print("f variable value is: \n");
print($e);
print("\n");

my $g = 12%2;
print("g variable value is: \n");
print($e);
print("\n");

print(++$a);
print("\n pre-increment of a variable value is:\n");

print("\n");

print($a++);

print("\n post-increment of a variable value is:\n");

print("\n");

print(--$a);

print(" \n pre-decrement of a variable value is:\n");

print("\n");

print($a--);

print("\n post-decrement of a variable value is:\n");
print($a);
print("\n");
print("Ternary a \n");
print $a = 1 ? 'True': 'False';
print("\n");
print ($a=2<=>3);

}

main();