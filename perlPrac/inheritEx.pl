package Subclass;
use strict;
use warnings;
use PClass1;
use PClass2;
use Data::Dumper;
our @ISA=qw(PClass1 PClass2);

sub new {
    my ($class, %args) = @_;
#################### Start of changes ####################
    my $obj1   = $class->PClass1::new(%args);
    my $obj2   = $class->PClass2::new(%args);
    my $this = $class->PClass1::new(%args);

    $this = {( %{$obj1}, %{$obj2} )};
    bless $this, $class;
#################### End of changes ####################
    return $this;
}

sub main{
	my $chil = new Subclass(('Vinod', 37),('Nevaan', 1.5));
	print dumper($chil);
}

main();