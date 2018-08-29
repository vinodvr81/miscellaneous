package Arithmetic;
#use strict;
#use warnings;
use Exporter;

# base class of this(Arithmetic) module
@ISA = qw(Exporter);

# Exporting the add and subtract routine
@EXPORT = qw(add subtract);
# Exporting the multiply and divide  routine on demand basis.
@EXPORT_OK = qw(multiply divide);

sub add
{
my ($no1,$no2) = @_;
my $result;
$result = $no1+$no2;
return $result;
}

sub subtract
{
my ($no1,$no2) = @_;
my $result;
$result = $no1-$no2;
return $result;

}

sub multiply
{
my ($no1,$no2) = @_;
my $result;
$result = $no1*$no2;
return $result;
}

sub divide
{
my ($no1,$no2) = @_;
my $result;
$result = $no1/$no2;
return $result;

sub import {
no strict 'refs';
for (qw(add subtract multiply )) {
*{"main::$_"} = \&$_;
}
}

}