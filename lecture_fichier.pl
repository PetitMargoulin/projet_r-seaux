#!/usr/bin/perl -w 
use strict;
open (FICHIER, "test.txt")  || die ("yolo");
my @LINES=<FICHIER>;
foreach my $line (@LINES)
{
	chomp($line);
	print "$line\n";
}	
close FICHIER;
