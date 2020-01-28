open ZHUANSHU,'d:/shufa/zhuanshu.txt';
open CAOSHU,'d:/shufa/caoshu.txt';
open XINGSHU,'d:/shufa/xingshu.txt';
open LISHU,'d:/shufa/lishu.txt';
open KAISHU,'d:/shufa/kaishu.txt';
open OUT,'>>d:/shufa/output.txt';
while(<ZHUANSHU>){
	@line = split '=' , $_;
	@arr = eval( $line[1]);
	#print $line[1]."\n";
	foreach(@{$arr[0]})
	{
		$shorturl = $_->[1];
		$shorturl =~ s/\//_/g;
		print OUT $line[0].' '.' 篆书 '.$_->[0].' http://sf.kdd.cc/'.$_->[1].".gif ./image/$shorturl.gif\n";
	
	}
}
close ZHUANSHU;

while(<CAOSHU>){
	@line = split '=' , $_;
	@arr = eval( $line[1]);
	#print $line[1]."\n";
	foreach(@{$arr[0]})
	{
		$shorturl = $_->[1];
		$shorturl =~ s/\//_/g;
		print OUT $line[0].' '.' 草书 '.$_->[0].' http://sf.kdd.cc/'.$_->[1].".gif ./image/$shorturl.gif\n";
	
	}
}
close CAOSHU;

while(<XINGSHU>){
	@line = split '=' , $_;
	@arr = eval( $line[1]);
	#print $line[1]."\n";
	foreach(@{$arr[0]})
	{
		$shorturl = $_->[1];
		$shorturl =~ s/\//_/g;
		print OUT $line[0].' '.' 行书 '.$_->[0].' http://sf.kdd.cc/'.$_->[1].".gif ./image/$shorturl.gif\n";
	
	}
}
close XINGSHU;

while(<LISHU>){
	@line = split '=' , $_;
	@arr = eval( $line[1]);
	#print $line[1]."\n";
	foreach(@{$arr[0]})
	{
		$shorturl = $_->[1];
		$shorturl =~ s/\//_/g;
		print OUT $line[0].' '.' 隶书 '.$_->[0].' http://sf.kdd.cc/'.$_->[1].".gif ./image/$shorturl.gif\n";
	
	}
}
close LISHU;

while(<KAISHU>){
	@line = split '=' , $_;
	@arr = eval( $line[1]);
	#print $line[1]."\n";
	foreach(@{$arr[0]})
	{
		$shorturl = $_->[1];
		$shorturl =~ s/\//_/g;
		print OUT $line[0].' '.' 楷书 '.$_->[0].' http://sf.kdd.cc/'.$_->[1].".gif ./image/$shorturl.gif\n";
	
	}
}
close KAISHU;

close OUT;