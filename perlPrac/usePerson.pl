use strict;

use warnings;

use Person;

use Data::Dumper;

$| = 1;


sub main{

	my $pers = new Person("Vinod", 37);

	$pers->greet("Bob");
	
	my $pers1 = Person->new({
	name => "Nevaan", 
	age => 37});

	$pers1->greet("Lakshmi");
}
main();