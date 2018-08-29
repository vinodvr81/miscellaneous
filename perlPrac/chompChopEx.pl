use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

print "Whats your name?";
my $name = <STDIN>;
print "\n";
print(chomp($name));
print "\n";
print "Hello $name";
print "\n";

print "Second \n";
print(chomp($name));
print "\n";
print "Hello $name";
print "\n";


print "THird \n";
print(chomp($name));
print "\n";
print "Hello $name";
print "\n";

print "Whats your name?";
my $name1 = <STDIN>;
print "\n";
print(chop($name1));
print "\n";

print "Second \n";
print(chop($name1));
print "\n";

print "Third \n";
print(chop($name1));
print "\n";

print "Hello $name1";
print "\n";

my @x = (25,100);
my @y = @x;
print "\n";
print chop(@x);
print "\n";
print chomp(@y);


}

main();