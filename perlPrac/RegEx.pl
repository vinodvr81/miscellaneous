use strict;
use warnings;

$|=1;

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{
	my $var1 = 'C:\cygwin64\home\user\perlPrac\trial.txt';
	my $var2 = 'C:\cygwin64\home\user\perlPrac\OUTPUT2.txt';
	
	open(INPUT, $var1) or die('file not found \n');
	open(OUTPUT,'>' .$var2)	;
	while(my $line1 = <INPUT>){
		if($line1 =~ /(n.w)/){
			print(OUTPUT "$1\n");
		}
	}
	
	close(INPUT);
	close(OUTPUT);
}

main();