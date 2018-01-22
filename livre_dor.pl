#!/usr/bin/perl -w
use strict;

open (FICHIER, ">>test.txt") ||die("c'est la merde mec");

print FICHIER "yolo\n";
close (FICHIER);


