use LWP::UserAgent;
use URI::Escape;
my $ua = LWP::UserAgent->new;


open HANZI, 'new_characterset.txt';
while (<HANZI>) {
	@line = split ' ', $_;
	foreach (@line) { 
		if($row >= 7605 ){
			print uri_escape($line[$row])." $row \n";
			getwords($_);
		}
		$row++;
		 }
}

sub getwords {
	open OUT, '>>d:/shufa/kaishu.txt';
	$ziti='%E6%A5%B7%E4%B9%A6';
	#open OUT, '>>d:/shufa/xingshu.txt';
	#$ziti='%E8%A1%8C%E4%B9%A6';
	#open OUT, '>>d:/shufa/caoshu.txt';
	#$ziti='%E8%8D%89%E4%B9%A6';
	#open OUT, '>>d:/shufa/lishu.txt';
	#$ziti='%E9%9A%B6%E4%B9%A6';
	#open OUT, '>>d:/shufa/zhuanshu.txt';
	#$ziti='%E7%AF%86%E4%B9%A6';

	$tempstr = shift;
	$word    = uri_escape($tempstr);

	#print $word;
	my $res = $ua->post(
"http://sf.kdd.cc/index.asp?k=$word&zt=$ziti&sz=100&zs=0&bj=",
		Content-Type => 'text/html',
		Accept       =>
		  'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
		Accept-Encoding => 'gzip, deflate',
		Accept-Language => 'en-us,en;q=0.5',
		Connection      => 'keep-alive',
		DNT             => '1',
		Host            => 'sf.kdd.cc',
		Referer         => 'http://sf.kdd.cc/',
		User-Agent      =>
		  'Mozilla/5.0 (Windows NT 6.1; rv:12.0) Gecko/20100101 Firefox/12.0'
	);

	# Check the outcome of the response
	if ( $res->is_success ) {
		$result = $res->content;
		if ( $result =~ /var b0=(.*?);/ ) {
			print OUT $tempstr . "=" . $1 . "\n";
			print $tempstr . "=" . $1 . "\n";
		}

		#print OUT $res->content;
	}
	else {
		print $res->status_line, "\n";
	}
}
