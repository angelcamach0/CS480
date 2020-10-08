use warnings;

my $total_rss = 0;
my $total_sz =0;

open(PS_F, "ps -AF|");

while(<PS_F>){
	($uid, $pid, $ppid, $c, $sz, $rss, $psr, $stime, $tty, $time, $time, $cmd) = split;
	print($sz . " " . $rss . "\n");
	$total_rss = $total_rss + $rss;
	$total_sz = $total_sz + $sz;
}

close(PS_F);

print("TOTAL RSS: " . $total_rss . "\nTOTAL SZ: " . $total_sz . "\n");

