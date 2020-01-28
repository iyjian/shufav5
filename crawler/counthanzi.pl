use Encode;
open HANZI, 'characterset.txt';
open OUT,'>>new_characterset.txt';
while (<HANZI>) {
	@line = split ' ', $_;
	foreach (@line) {
		$myhanzi{$_} = 'old';
		#print OUT $_."\n";
	}
}
close HANZI;

open HANZI2, 'characterset2.txt';
while (<HANZI2>) {
	#print OUT $_;
	$line = $_;
	chomp($line);
		if ( $myhanzi{$line} eq 'old') { }
		else { $myhanzi{$line} = 'new'; }
	}

close HANZI2;

foreach ( keys %myhanzi ) {
	if($myhanzi{$_}='new'){
		print OUT $_.' ';
	}
	#print OUT  $_.' '. "$myhanzi{$_}\n";
}
#print $myhanzi{'一'}."\n";
#@hanzi=keys %myhanzi;
#$test=@hanzi;
#print $test;
