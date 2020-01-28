open FH,'d:/shufa/output_step2.txt';
open OUT,'>>d:/shufa/output_step3.txt';
$row=1;
while(<FH>)
{
	$myhash{$_}++;
	$row++;
}
close FH;
print $row;
print "\n\n\n\n";
foreach(keys %myhash)
{
	print OUT $_;
}
