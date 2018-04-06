#!/usr/bin/perl
use strict;
use warnings;
use File::Slurp qw/read_file/;
use List::Compare;

chomp( my @a_file = read_file 'file_1.txt' );
chomp( my @b_file = read_file 'file_2.txt' );

my @a_file_only = List::Compare->new( \@a_file, \@b_file )->get_Lonly;

print "$_\n" for @a_file_only;
