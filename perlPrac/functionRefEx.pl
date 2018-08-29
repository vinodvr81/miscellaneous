#!/usr/bin/perl
use strict;
use warnings;


# Function definition
sub PrintHash {
   my (%hash) = @_;
   
   foreach my $item (%hash) {
      print "Item : $item\n";
   }
}
my %hash = ('name' => 'Tom', 'age' => 19);

# Create a reference to above function.
my $cref = \&PrintHash;

# Function call using reference.
&$cref(%hash);