package Person;
use strict;
use warnings;

$|=1;

sub new{
	my $class = shift;
	my $self = {
	name => shift,
	age => shift,
	};

	bless($self,$class);
	return $self;
}


sub greet{
	my ($self,$other) =  @_;
	
	print("Hell0 $other, My name is: " . $self->{"name"} . "; and my age is : " . $self->{"age"});
	

}
1;