#!/usr/bin/perl

use strict;

my $first = 1;
my %hash = ();

open(FILE1, "/etc/zabbix/domain.list") || die "Error: $!\n";

print "{\n";
print "\t\"data\":[\n\n";

while (<FILE1>) {
                my $domain = substr($_, 0, -1);
                print ",\n" if not $first;
                $first = 0;

                print "\t{\n";
                print "\t\t\"{#DOMAIN}\":\"$domain\"\n";
                print "\t}";
}

print "\n\t]\n";
print "}\n";

