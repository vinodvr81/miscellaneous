package PClass1;
use strict;
use Carp;
use warnings;

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my (%args) = @_;
    my $this = {
    _fs => $args{fs} || croak("You must supply a filesystem"),
    };
    bless $this, $class;
    return $this;
}

1;