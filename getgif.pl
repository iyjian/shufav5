use LWP::Simple;
open FH, 'd:/shufa/output.txt';
$row = 1;
while (<FH>) {
	if ( $row >= $ARGV[0] && $row<= $ARGV[1]) {
		@line = split ' ', $_;
	getstore( $line[3], $line[4] );
	print $row.'--->'.$line[3]." $ARGV[0] <----> $ARGV[1] \n";
	}
$row++;
}
