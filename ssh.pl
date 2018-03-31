use Net::SSH qw(sshopen2);
use strict;

my $user = "root"; /* username */
my $host = "139.59.24.17"; /* enter master server ip */
my $cmd = "cat test.txt"; 

sshopen2("$user\@$host", *READER, *WRITER, "$cmd") || die "ssh: $!";

while (<READER>) {
    chomp();
    print "$_\n";
}

close(READER);
close(WRITER);
