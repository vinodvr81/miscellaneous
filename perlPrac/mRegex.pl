#!/usr/bin/perl

$bar = "This is foo and again foo";
if ($bar =~ m[foo]) {
   print "First time is matching\n";
} else {
   print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ m{foo}) {
   print "Second time is matching\n";
} else {
   print "Second time is not matching\n";
}