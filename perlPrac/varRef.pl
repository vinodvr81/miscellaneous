#!/usr/bin/perl

use strict;
use warnings;

my $var = 10;

# Now $r has reference to $var scalar.
my $r = \$var;

# Print value available at the location stored in $r.
print "Value of $var is : ", $$r, "\n";

my @var = (1, 2, 3);
# Now $r has reference to @var array.
my $rr = \@var;
# Print values available at the location stored in $r.
print "Value of @var is : ",  @$rr, "\n";

my %var = ('key1' => 10, 'key2' => 20);
# Now $r has reference to %var hash.
my $rrr = \%var;
# Print values available at the location stored in $r.
print "Value of %var is : ", %$rrr, "\n";