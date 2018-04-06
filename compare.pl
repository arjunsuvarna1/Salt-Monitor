#!/usr/bin/perl
use strict;
use warnings;
use File::Slurp qw/read_file/;
use List::Compare;

chomp( my @a_file = read_file 'file_1.txt' );
chomp( my @b_file = read_file 'file_2.txt' );

my @a_file_only = List::Compare->new( \@a_file, \@b_file )->get_Lonly;
open my $fh, '>', "report.txt" or die "Cannot open output.txt: $!";

# Loop over the array
foreach (@a_file_only)
{
    print $fh "$_\n"; # Print each entry in our array to the file
}
close $fh;
#print "$_\n" for @a_file_only;
