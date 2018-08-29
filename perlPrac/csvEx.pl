use strict;
use warnings;
use Data::Dumper;


$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{

	my $input1 = 'C:\cygwin64\home\user\perlPrac\typecsv.csv';
	unless(open(INPUT,$input1)){
		die "\nCannot open the  file\n";
	}
	
	while(<INPUT>){
		print($_);	  #stores the file value in $_
	}
	close(INPUT);
	unless(open(INPUT1,$input1)){
		die "\nCannot open the  file\n";
	}	
	print("\n");
	while(my $line1 = <INPUT1>){
		
		my @values = split ',', $line1;
		print("\n". $values[0]. "\t" . $values[1]. "\t" . $values[2]. "\n");
	}	
	
	close(INPUT1);
	
	unless(open(INPUT2,$input1)){
		die "\nCannot open the  file\n";
	}	
	print("\n");
	while(my $line2 = <INPUT2>){
		
		my @values1 = split ',', $line2;
		print(join '||',@values1 );
	}	
	
	close(INPUT2);	
	
	unless(open(INPUT3,$input1)){
		die "\nCannot open the  file\n";
	}	
	print("\n");
	
	while(my $line3 = <INPUT3>){
		print("\n");
		print("'$line3'");
		print("\n");
		my @values2 = split ',', $line3;
		#print(join '||',@values2 );
		print Dumper(@values2);
	}	
	
	close(INPUT3);	

	unless(open(INPUT4,$input1)){
		die "\nCannot open the  file\n";
	}	
	print("\n");
	
	while(my $line4 = <INPUT4>){
		chomp $line4;
		print("\n");
		print("'$line4'");
		print("\n");
		my @values2 = split ',', $line4;
		#print(join '||',@values2 );
		print Dumper(@values2);
	}	
	
	close(INPUT4);	
	
}

main();