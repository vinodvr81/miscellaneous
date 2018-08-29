use strict;
use warnings;

$|=1;  # stops output buffering

#The $number variables contain the parts of the string that matched
# the capture groups ( ... ) in the pattern for your last regex match if the match was successful.

sub main{
	# \d digit
	# \s space
	# \S non-space
	# \w alphanumeric
	# {5} five of the preceding 
	# {3,6} at least three and at most 6
	# {3,} at least three
	
	my $text1 = 'I am 037 years old.';
	
	if($text1 =~ /(\d?)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches zero '$1' \n");
	}	
	
	if($text1 =~ /(\d+)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches first '$1' \n");
	}
	if($text1 =~ /(.*\d+)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches second '$1' \n");
	}

	if($text1 =~ /(.+\d+)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches third '$1' \n");
	}	

	if($text1 =~ /(\w+?)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches fourth '$1' \n");
	}

	if($text1 =~ /(\w*?)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches fifth '$1' \n");
	}

	if($text1 =~ /(\w.*)/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches sixth '$1' \n");
	}	
	
	
	my $text2 = 'DE$123456';
	if($text2 =~ /(\DE\$\d{3,6})/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches seventh '$1' \n");
	}	
	
	if($text2 =~ /(\DE\$\d{3,})/){    #/(\d*)/ doesn't work as * is for 0 to more and + is 1 to more
		print("Matches eigth '$1' \n");
	}	
	
}

main();