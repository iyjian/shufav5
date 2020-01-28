open HANZI2, 'new_characterset.txt';
while(<HANZI2>)
{
	@line = split ' ',$_;
	foreach(@line)
	{
		$row++;
		print $row."\n";
	}
	
}
close HANZI2;