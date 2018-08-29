use strict;
use warnings;

$|=1;

sub main{
	my $var1 = 'C:\cygwin64\home\user\perlPrac\trial.txt';
	my $var2 = 'C:\cygwin64\home\user\perlPrac\OUTPUT1.txt';
	
	open(INPUT, $var1) or die('file not found \n');
	open(OUTPUT,'>' .$var2)	;
	while(my $line1 = <INPUT>){
		if($line1 =~ /now/){
			print(OUTPUT $line1);
		}
	}
	
	close(INPUT);
	close(OUTPUT);
}

main();