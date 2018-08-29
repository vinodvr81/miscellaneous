use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

	my %animals = ('mamal' => 'dog',
	'domestic'=>'cat',
	'prey' => 'rabbit');
	
	print Dumper(%animals);
	print("\n");
	my $ref_hash = \%animals;
	print ($ref_hash->{'mamal'});
	print("\n");
	print ($ref_hash->{'domestic'});
	print("\n");
	
	print ($animals{'prey'});
	print("\n");
	print("********************");
	print("\n");
	print("All Keys Here :");
	print("\n");
	my @refKey = keys %animals;
	my $n;
	foreach $n(@refKey)
	{
	  print($n);
	  print("\n");
	}
	print("********************");
	print("\n");
	my @refValue = values %animals;
	my $v;
	print("\n");
	print("All Values Here :");
	print("\n");	
	foreach $v(@refValue)
	{
	  print($v);
	  print("\n");
	}
	print("********************");
	print("\n");

	while (($n,$v) = each %animals){
	
	print("Key is:\t" . $n. "\t and corresponding Values is :\t" . $v ."\n");
	
	}

	print("********************");
	print("\n");

	foreach my $key (sort keys %animals){
	my $value = $animals{$key};
	print("$key : $value \n");
	
	}	

	

}

main();