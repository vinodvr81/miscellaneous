package PClass2;
use strict;
use warnings;

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my (%args) = @_;
    my $this = {
    _hosts => $args{hosts},
    };
    bless $this, $class;
    return $this;
}

1;