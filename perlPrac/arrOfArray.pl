use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

	my @animals = ('dog','cat','rabbit');
	my @fruits  = ('apple','banana','grape');
	my @values;
	my $fruit_ref = \@fruits;
	push @values, \@animals;
	push @values, \@fruits;
	
	print Dumper(@values);
	print ($fruit_ref->[0]);

}

main();