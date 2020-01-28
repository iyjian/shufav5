use LWP::Simple;
open FH,  'd:/shufa/output_step3.txt';
open OUT, '>>d:/shufa/array_step3.txt';
while (<FH>) {
	@line = split ' ', $_;
		$hash{$line[0] } = $hash{$line[0] } . '["'.$line[1].'","'.$line[2].'","'.$line[4].'"],';

}

foreach ( keys %hash ) {
	$tempstr = $hash{$_};
	chop($tempstr);
	print OUT '"'.$_.'":['.$tempstr. "],\n";
}
