use strict;
use warnings;

$|=1;

sub main{
	my $var1 = 'C:\cygwin64\home\user\perlPrac\trial.txt';
	open(INPUT, $var1) or die('file not found \n');

	while(my $line1 = <INPUT>){
		if($line1 =~ /now/){
			print($line1);
		}
	}
	
	close(INPUT);
}

main();