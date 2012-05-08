#!/usr/bin/perl

use 5.010;
use feature 'say';
use autodie;
use strict;
use warnings;
use Getopt::Long;
use Helper::Commit;

my $git         = 0;
my $cpan        = 0;
my $new_version = 0;
my $debug       = 0;

my $result = GetOptions(
    'git'   => \$git,
    'cpan'  => \$cpan,
    'debug' => \$debug,
);

my $commit_helper = Helper::Commit->new(
    git    => $git,
    cpan   => $cpan,
    _debug => $debug,
);

$commit_helper->run;

exit 0;

