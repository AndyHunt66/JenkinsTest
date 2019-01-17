#!/usr/bin/perl

print "2";
my $outputFile = "./output.txt";
open OUTPUTFILE, ">$outputFile" or die "Can't open $outputFile for writing - $! \n";

print OUTPUTFILE "Bob\n";

