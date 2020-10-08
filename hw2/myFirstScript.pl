#!/usr/bin/perl

open(TEST, "/etc/passwd");

while(<TEST>){
	print "$_";
}
close(TEST);
