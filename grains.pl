my $b = "salt \'\*\' grains.items"; /* salt '*' grains.items; lists all details of avvailable grains */
my $a = `$b`;
$abc = 'text.txt';
open(INPUT,'>',$abc) or die "Not able to open the file\n";
print INPUT "$a"; /* stores output in text.txt */
close (INPUT);
